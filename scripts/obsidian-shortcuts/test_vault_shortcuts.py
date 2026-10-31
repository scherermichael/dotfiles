#!/usr/bin/env python3
"""Tests for vault_shortcuts.py: the parts that do not need Shortcuts itself.

    python3 scripts/obsidian-shortcuts/test_vault_shortcuts.py

The note pipeline is run through NSRegularExpression via osascript, the engine
Shortcuts uses, because Python's re differs in exactly the corners these
patterns live in (\\A in multi-line mode, $ before a final newline).
"""

import json
import subprocess
import sys
import unicodedata
import unittest
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
# No __pycache__ next to the scripts: it would show up as untracked in the repo.
sys.dont_write_bytecode = True
import vault_shortcuts as vs  # noqa: E402

HOME = Path("/Users/someone")
PRIVATE = vs.Vault("Private", HOME / "Library/Mobile Documents/iCloud~md~obsidian/Documents/Personal",
                   "01 @Inbox", "")
WORK = vs.Vault("Work", HOME / "projects/obsidian-work", "01 Inbox", "WORK")
LOCAL_ONLY = vs.Vault("Local", HOME / "notes/local", "Inbox", "")
VAULTS = [PRIVATE, WORK]


def builds(vaults, present):
    return {name: build for name, _, build, _ in vs.wanted_shortcuts(vaults, present, HOME)}


def strings(node):
    """Every text in a workflow, variables shown as U+FFFC."""
    if isinstance(node, dict):
        for value in node.values():
            yield from strings(value)
    elif isinstance(node, list):
        for value in node:
            yield from strings(value)
    elif isinstance(node, str):
        yield node


class Locations(unittest.TestCase):
    def test_mac_addresses(self):
        # Not ~/Library/Mobile Documents via the home folder: from Spotlight or
        # the share menu a shortcut may not read there and finds nothing.
        self.assertEqual(vs.mac_inbox(PRIVATE, HOME), ("icloud", "Personal/01 @Inbox"))
        self.assertEqual(vs.mac_inbox(WORK, HOME), ("home", "projects/obsidian-work/01 Inbox"))

    def test_phone_paths(self):
        self.assertEqual(vs.phone_inbox(PRIVATE, HOME), ("icloud", "Personal/01 @Inbox"))
        self.assertEqual(vs.phone_inbox(WORK, HOME), ("phone", "WORK/01 Inbox"))
        self.assertIsNone(vs.phone_inbox(LOCAL_ONLY, HOME))

    def test_no_ids_in_any_address(self):
        # A picked iCloud folder carries a device-specific domain ID and fails
        # on every other device; addresses must be roots plus paths only.
        for name, wf, _, _ in vs.wanted_shortcuts(VAULTS, lambda v: True, HOME):
            dumped = json.dumps(wf)
            self.assertNotIn("crossDeviceItemID", dumped, name)
            self.assertNotIn("CloudDocs", dumped, name)


class Targets(unittest.TestCase):
    def test_priority_order_gives_the_hotkeys(self):
        targets = vs.plan_targets(VAULTS, lambda v: True)
        self.assertEqual([(v.label, key) for v, key in targets], [("Private", "@~,"), ("Work", "@~$,")])

    def test_a_mac_with_only_the_second_vault_makes_it_primary(self):
        targets = vs.plan_targets(VAULTS, lambda v: v is WORK)
        self.assertEqual([(v.label, key) for v, key in targets], [("Work", "@~,")])

    def test_fixed_shortcuts_only_for_vaults_present(self):
        names = builds(VAULTS, lambda v: v is WORK)
        self.assertIn("Add to Vault Inbox (Work)", names)
        self.assertNotIn("Add to Vault Inbox (Private)", names)


class Builds(unittest.TestCase):
    def test_same_definition_same_build(self):
        self.assertEqual(builds(VAULTS, lambda v: True), builds(VAULTS, lambda v: True))

    def test_a_changed_inbox_changes_the_build(self):
        moved = vs.Vault("Work", WORK.root, "00 Inbox", WORK.phone_root)
        before, after = builds(VAULTS, lambda v: True), builds([PRIVATE, moved], lambda v: True)
        self.assertNotEqual(before["Add to Vault Inbox (Work)"], after["Add to Vault Inbox (Work)"])
        self.assertEqual(before["Add to Vault Inbox (Private)"], after["Add to Vault Inbox (Private)"])

    def test_picker_builds_do_not_depend_on_what_this_mac_has(self):
        # Two Macs on one Apple ID share the library. If the picker came out
        # differently on a Mac lacking a vault, each would keep re-importing
        # over the other's copy.
        everything, work_only = builds(VAULTS, lambda v: True), builds(VAULTS, lambda v: v is WORK)
        for name in (vs.NOTE_PICKER, vs.FILE_PICKER):
            self.assertEqual(everything[name], work_only[name], name)

    def test_a_mac_without_obsidians_icloud_folder_never_looks_there(self):
        # Below a missing root a lookup stops the shortcut instead of coming
        # back empty, so on such a Mac the iCloud vault must not be checked.
        # Counted are the vault checks (for _Inbox.md); the collision check
        # before saving sits in the vault's own branch, which such a Mac never
        # enters because the vault is not offered.
        def icloud_lookups(wf):
            return sum(1 for a in wf["WFWorkflowActions"]
                       if a["WFWorkflowActionIdentifier"] == "is.workflow.actions.documentpicker.open"
                       and a["WFWorkflowActionParameters"]["WFFile"]["fileLocation"]["WFFileLocationType"] == "iCloud"
                       and a["WFWorkflowActionParameters"]["WFGetFilePath"] == "Personal/01 @Inbox/_Inbox.md")
        for make in (vs.note_picker, vs.file_picker):
            with_folder, without = make(VAULTS, HOME, True), make(VAULTS, HOME, False)
            self.assertEqual(icloud_lookups(with_folder), 2, make.__name__)   # Mac and iPhone
            self.assertEqual(icloud_lookups(without), 1, make.__name__)       # iPhone only

    def test_the_version_check_answers_with_the_build(self):
        for name, wf, build, _ in vs.wanted_shortcuts(VAULTS, lambda v: True, HOME):
            actions = wf["WFWorkflowActions"]
            check = actions[1]["WFWorkflowActionParameters"]
            self.assertEqual(check["WFConditionalActionString"], vs.TOKEN, name)
            answer = actions[2]["WFWorkflowActionParameters"]["WFOutput"]["Value"]["string"]
            self.assertEqual(answer, build, name)

    def test_no_text_is_asked_whether_it_has_any_value(self):
        # "Has any value" counts an empty text as a value: asked of a text that
        # came out empty, it says yes. Only results that are nothing when they
        # find nothing (a file lookup, the URLs found, a dialog) may be asked.
        texts = {"is.workflow.actions.text.replace", "is.workflow.actions.gettext",
                 "is.workflow.actions.properties.files"}
        for name, wf, _, _ in vs.wanted_shortcuts(VAULTS, lambda v: True, HOME):
            makers = {a["WFWorkflowActionParameters"]["UUID"]: a["WFWorkflowActionIdentifier"]
                      for a in wf["WFWorkflowActions"]}
            for a in wf["WFWorkflowActions"]:
                p = a["WFWorkflowActionParameters"]
                if a["WFWorkflowActionIdentifier"] == "is.workflow.actions.conditional" and p.get("WFCondition") == vs.HAS_VALUE:
                    ref = p["WFInput"]["Variable"]["Value"]
                    self.assertNotIn(makers.get(ref.get("OutputUUID")), texts, f"{name}: {ref}")
                    self.assertFalse(ref.get("Aggrandizements"), f"{name}: a property may come back empty: {ref}")

    def test_every_step_has_its_own_id(self):
        # Shortcuts remembers "Always Allow" per step; without an ID it asks
        # again on every run.
        for name, wf, _, _ in vs.wanted_shortcuts(VAULTS, lambda v: True, HOME):
            ids = [a["WFWorkflowActionParameters"].get("UUID") for a in wf["WFWorkflowActions"]]
            self.assertNotIn(None, ids, name)
            self.assertEqual(len(ids), len(set(ids)), name)

    def test_variable_positions_count_utf16_units(self):
        # "➕" is one UTF-16 unit, an emoji outside the BMP two; a position
        # counted in Python characters would put the variable one place off.
        token = vs.text("📎 ", vs.variable("x"))
        self.assertEqual(list(token["Value"]["attachmentsByRange"]), ["{3, 1}"])


class Entries(unittest.TestCase):
    def test_file_entries_link_from_the_vault_root(self):
        wf, _ = vs.finalize(vs.file_picker(VAULTS, HOME))
        texts = list(strings(wf))
        self.assertIn("- [ ] ￼￼ ➕ ￼\n    ￼[[01 Inbox/￼.￼]]￼", texts)
        self.assertIn("- [ ] ￼￼ ➕ ￼\n    ￼[[01 @Inbox/￼.￼]]￼", texts)
        self.assertIn("PDF - ", texts)
        self.assertIn("Image - ", texts)

    def page_url_reads(self, wf):
        """Texts built from a "Page URL" property, as (item reference, string)."""
        found = []
        for a in wf["WFWorkflowActions"]:
            if a["WFWorkflowActionIdentifier"] != "is.workflow.actions.gettext":
                continue
            value = a["WFWorkflowActionParameters"]["WFTextActionText"]["Value"]
            for ref in value["attachmentsByRange"].values():
                if any(g.get("PropertyName") == "Page URL" for g in ref.get("Aggrandizements", [])):
                    found.append(ref.get("VariableName") or ref.get("Type"))
        return found

    def test_a_pdf_of_a_web_page_gets_its_address(self):
        # "Get URLs from Input" finds nothing in a Safari web page; the
        # address is only in its Page URL property. Read twice: once in
        # brackets to see whether there is one, once for the line.
        wf, _ = vs.finalize(vs.file_picker(VAULTS, HOME))
        self.assertEqual(self.page_url_reads(wf), ["Repeat Item", "Repeat Item"])
        self.assertIn("⟦￼⟧", list(strings(wf)))

    def test_a_shared_web_page_becomes_a_bookmark_note(self):
        wf, _ = vs.finalize(vs.note_picker(VAULTS, HOME))
        self.assertIn("WFSafariWebPageContentItem", wf["WFWorkflowInputContentItemClasses"])
        self.assertEqual(self.page_url_reads(wf), ["ExtensionInput", "ExtensionInput"])
        self.assertIn("Web - ￼\n￼", list(strings(wf)))
        self.assertIn(vs.DEFUSE_TAG, [a["WFWorkflowActionParameters"].get("WFReplaceTextFind")
                                      for a in wf["WFWorkflowActions"]])
        # The dialog starts with the prefill, never with the page as text,
        # which would be the whole page.
        defaults = [a["WFWorkflowActionParameters"]["WFAskActionDefaultAnswer"]["Value"]["attachmentsByRange"]
                    for a in wf["WFWorkflowActions"] if a["WFWorkflowActionIdentifier"] == "is.workflow.actions.ask"]
        self.assertEqual(defaults, [{"{0, 1}": {"Type": "Variable", "VariableName": "prefill"}}] * 2)

    def test_hotkey_dialog_names_its_vault(self):
        wf, _ = vs.finalize(vs.fixed_note(WORK, HOME))
        prompts = [a["WFWorkflowActionParameters"]["WFAskActionPrompt"] for a in wf["WFWorkflowActions"]
                   if a["WFWorkflowActionIdentifier"] == "is.workflow.actions.ask"]
        self.assertEqual(prompts, ["Add to Work inbox:"])


class Services(unittest.TestCase):
    NEW_PRIVATE, NEW_WORK = "A" * 8 + "-0000-0000-0000-" + "0" * 12, "B" * 8 + "-0000-0000-0000-" + "0" * 12
    OLD_WORK, OTHER, GONE = ("C" * 8 + "-0000-0000-0000-" + "0" * 12, "D" * 8 + "-0000-0000-0000-" + "0" * 12,
                             "E" * 8 + "-0000-0000-0000-" + "0" * 12)
    NEW_FILES = "F" * 8 + "-0000-0000-0000-" + "0" * 12

    def entry(self, sid):
        return vs.SERVICE_ENTRY.format(id=sid)

    def test_the_file_picker_is_switched_on_for_finder(self):
        # The surfaces in the shortcut file are not enough: Finder shows a
        # Quick Action only once these settings exist for its current ID.
        wanted = vs.services_wanted({vs.FILE_PICKER: self.NEW_FILES, "Add to Vault Inbox (Work)": self.NEW_WORK},
                                    {"Add to Vault Inbox (Work)": "@~,"})
        self.assertEqual(wanted, {self.NEW_FILES: {"presentation_modes": vs.FINDER_MODES},
                                  self.NEW_WORK: {"key_equivalent": "@~,"}})

    def test_parked_copies_leave_every_menu_and_key(self):
        status = {self.entry(self.OLD_WORK): {"key_equivalent": "@~,",
                                              "presentation_modes": dict(vs.FINDER_MODES)}}
        merged, _ = vs.merge_services(status, {}, {self.OLD_WORK}, existing={self.OLD_WORK}, ours={self.OLD_WORK})
        self.assertEqual(merged, {self.entry(self.OLD_WORK): {"presentation_modes": vs.HIDDEN_MODES}})

    def test_keys_move_to_the_new_copies(self):
        status = {self.entry(self.OLD_WORK): {"key_equivalent": "@~,"},
                  "is.workflow.actions.image.convert.finder": 4}
        wanted = {self.NEW_PRIVATE: {"key_equivalent": "@~,"}, self.NEW_WORK: {"key_equivalent": "@~$,"}}
        merged, warnings = vs.merge_services(status, wanted, set(),
                                             existing={self.OLD_WORK, self.NEW_PRIVATE, self.NEW_WORK},
                                             ours={self.OLD_WORK})
        self.assertEqual(merged, {self.entry(self.NEW_PRIVATE): {"key_equivalent": "@~,"},
                                  self.entry(self.NEW_WORK): {"key_equivalent": "@~$,"},
                                  "is.workflow.actions.image.convert.finder": 4})
        self.assertEqual(warnings, [])

    def test_a_deleted_holder_loses_the_key(self):
        status = {self.entry(self.GONE): {"key_equivalent": "@~,"}}
        merged, _ = vs.merge_services(status, {self.NEW_PRIVATE: {"key_equivalent": "@~,"}}, set(), existing={self.NEW_PRIVATE}, ours=set())
        self.assertNotIn(self.entry(self.GONE), merged)

    def test_someone_elses_shortcut_keeps_its_key_and_is_reported(self):
        status = {self.entry(self.OTHER): {"key_equivalent": "@~,"}}
        merged, warnings = vs.merge_services(status, {self.NEW_PRIVATE: {"key_equivalent": "@~,"}}, set(),
                                            existing={self.OTHER, self.NEW_PRIVATE}, ours=set())
        self.assertEqual(merged[self.entry(self.OTHER)], {"key_equivalent": "@~,"})
        self.assertEqual(len(warnings), 1)

    def test_other_settings_of_a_holder_survive(self):
        status = {self.entry(self.OLD_WORK): {"key_equivalent": "@~,", "enabled_context_menu": True}}
        merged, _ = vs.merge_services(status, {self.NEW_PRIVATE: {"key_equivalent": "@~,"}}, set(),
                                     existing={self.OLD_WORK, self.NEW_PRIVATE}, ours={self.OLD_WORK})
        self.assertEqual(merged[self.entry(self.OLD_WORK)], {"enabled_context_menu": True})


JXA = r"""
ObjC.import('Foundation');
function run(argv) {
  const steps = JSON.parse(argv[0]), cases = JSON.parse(argv[1]);
  return JSON.stringify(cases.map(s => steps.reduce((t, [find, replace]) => {
    const re = $.NSRegularExpression.regularExpressionWithPatternOptionsError($(find), 0, $());
    const ns = $.NSString.stringWithString($(t));
    return ObjC.unwrap(re.stringByReplacingMatchesInStringOptionsRangeWithTemplate(
      ns, 0, $.NSMakeRange(0, ns.length), $(replace)));
  }, s)));
}
"""


def regex_chain(steps, cases):
    """Run (find, replace) steps over each case, as consecutive Replace Text
    steps in Shortcuts would."""
    done = subprocess.run(["osascript", "-l", "JavaScript", "-e", JXA, json.dumps(steps), json.dumps(cases)],
                          capture_output=True, text=True, check=True)
    return json.loads(done.stdout)


def pipeline(cases, due=""):
    """The note pipeline, with today as 2026-10-30 and `due` for what the
    due-date step leaves in the variable ("" or " 📅 <date>")."""
    fill = {id(vs.DATE): "2026-10-30", id(vs.DUE): due}
    steps = [(find, "".join(fill.get(id(p), p) for p in
                            (replace if isinstance(replace, tuple) else (replace,))))
             for find, replace in vs.NOTE_PIPELINE]
    return regex_chain(steps, cases)


@unittest.skipUnless(sys.platform == "darwin", "needs NSRegularExpression")
class DueDate(unittest.TestCase):
    MARKERS = {
        "Angebot prüfen +3": "3",
        "Rückruf +0": "0",
        "Steuer +12 ": "12",
        "Angebot +3\nmit Kontext": "3",
        "+49 170 1234567 zurückrufen": "",
        "C++ lernen": "",
        "Titel+3": "",
        "Titel\nZeile zwei +3": "",
        "Titel": "",
    }

    def test_the_marker_is_found_only_where_it_belongs(self):
        # Only "+N" after a space at the end of the first line. A text with a
        # marker turns into FOUND_DUE; any other comes back unchanged.
        got = regex_chain([vs.DUE_FOUND], list(self.MARKERS))
        expected = [vs.FOUND_DUE if days else text for text, days in self.MARKERS.items()]
        self.assertEqual(got, expected)

    def test_the_marker_gives_the_number_of_days(self):
        with_marker = [text for text, days in self.MARKERS.items() if days]
        self.assertEqual(regex_chain([vs.DUE_DAYS], with_marker), [self.MARKERS[t] for t in with_marker])

    def test_the_marker_leaves_the_line(self):
        got = regex_chain([vs.DUE_MARKER], ["Angebot prüfen +3", "Steuer +12 \nKontext", "Titel"])
        self.assertEqual(got, ["Angebot prüfen", "Steuer\nKontext", "Titel"])

    def test_the_due_date_follows_the_creation_date(self):
        after_marker = regex_chain([vs.DUE_MARKER], ["Angebot prüfen +3\nKontext"])
        self.assertEqual(pipeline(after_marker, due=" 📅 2026-11-02"),
                         ["- [ ] Angebot prüfen ➕ 2026-10-30 📅 2026-11-02\n    Kontext"])

    def test_every_note_shortcut_counts_the_days(self):
        # Adjust Date ignores a variable number of days, so the shortcut adds
        # one day per round of a repeat that runs N times.
        for name, wf, _, _ in vs.wanted_shortcuts(VAULTS, lambda v: True, HOME):
            if name == vs.FILE_PICKER:
                continue
            actions = wf["WFWorkflowActions"]
            finds = {a["WFWorkflowActionParameters"]["UUID"]: a["WFWorkflowActionParameters"].get("WFReplaceTextFind")
                     for a in actions}
            repeats = [a["WFWorkflowActionParameters"] for a in actions
                       if a["WFWorkflowActionIdentifier"] == "is.workflow.actions.repeat.count"
                       and a["WFWorkflowActionParameters"]["WFControlFlowMode"] == 0]
            # One per dialog: the picker has a dialog for each vault.
            dialogs = sum(1 for a in actions if a["WFWorkflowActionIdentifier"] == "is.workflow.actions.ask")
            # A dialog holding only blanks writes nothing.
            compared = [a["WFWorkflowActionParameters"].get("WFConditionalActionString") for a in actions
                        if a["WFWorkflowActionIdentifier"] == "is.workflow.actions.conditional"]
            self.assertEqual(compared.count(vs.FOUND_BLANK), dialogs, name)
            self.assertEqual(compared.count(vs.FOUND_DUE), dialogs, name)
            self.assertEqual(len(repeats), dialogs, name)
            for repeat in repeats:
                self.assertEqual(finds[repeat["WFRepeatCount"]["Value"]["OutputUUID"]], vs.DUE_DAYS[0], name)
            steps = [a["WFWorkflowActionParameters"]["WFDuration"]["Value"]["Magnitude"] for a in actions
                     if a["WFWorkflowActionIdentifier"] == "is.workflow.actions.adjustdate"]
            self.assertEqual(steps, [0, 1] * dialogs, name)
            # The marker comes off the line, and the text without it is what
            # goes on.
            removals = {uid for uid, find in finds.items() if find == vs.DUE_MARKER[0]}
            self.assertEqual(len(removals), dialogs, name)
            carried = {a["WFWorkflowActionParameters"]["WFInput"]["Value"].get("OutputUUID") for a in actions
                       if a["WFWorkflowActionIdentifier"] == "is.workflow.actions.setvariable"
                       and a["WFWorkflowActionParameters"]["WFVariableName"] == "entry"}
            self.assertLessEqual(removals, carried, name)
            stamps = [a for a in actions if a["WFWorkflowActionParameters"].get("WFReplaceTextFind") == r"\A(.*)"]
            self.assertEqual(len(stamps), dialogs, name)
            for stamp in stamps:
                refs = list(stamp["WFWorkflowActionParameters"]["WFReplaceTextReplace"]["Value"]["attachmentsByRange"].values())
                self.assertIn({"Type": "Variable", "VariableName": "due"}, refs, name)


def composition_steps():
    """The letter replacements as they stand in the built file picker."""
    wf, _ = vs.finalize(vs.file_picker(VAULTS, HOME))
    patterns = {vs.decomposed(letter) for letter in vs.COMPOSABLE}
    steps = []
    for a in wf["WFWorkflowActions"]:
        p = a["WFWorkflowActionParameters"]
        if a["WFWorkflowActionIdentifier"] == "is.workflow.actions.text.replace" and p["WFReplaceTextFind"] in patterns:
            steps.append((p["WFReplaceTextFind"], p["WFReplaceTextReplace"]["Value"]["string"]))
    return steps


@unittest.skipUnless(sys.platform == "darwin", "needs NSRegularExpression")
class FileNames(unittest.TestCase):
    def test_decomposed_letters_are_composed(self):
        # Names of files that went through iOS or iCloud come decomposed; a
        # link in that form never resolves in Obsidian. Run with the steps of
        # the built shortcut, not with a table of the test's own.
        names = ["Mieterhöhung 2024", "Präsidentschaftskandidatur", "Café Olé",
                 "Ärger mit Überweisung", "Señor", "Garçon", "Århus"]
        expected = [unicodedata.normalize("NFC", n) for n in names]
        self.assertEqual(regex_chain(composition_steps(), names), expected)

    def test_only_decomposed_names_take_the_long_way(self):
        # A name without combining marks turns into the marker and skips the
        # replacements; a decomposed one comes back unchanged and takes them.
        found = regex_chain([vs.COMPOSED], ["Mieterhöhung", "Mieterhöhung", "Invoice 2024", ""])
        self.assertEqual(found, ["Mieterhöhung", vs.FOUND_COMPOSED, vs.FOUND_COMPOSED, vs.FOUND_COMPOSED])

    def test_a_dialog_of_only_blanks_is_recognised(self):
        found = regex_chain([vs.BLANK], ["", "   ", " \n\n\t", "x", "  Titel"])
        self.assertEqual(found, [vs.FOUND_BLANK] * 3 + ["x", "  Titel"])

    def test_every_composable_letter_round_trips(self):
        letters = list(vs.COMPOSABLE)
        self.assertEqual(regex_chain(composition_steps(), [unicodedata.normalize("NFD", c) for c in letters]),
                         letters)

    def test_a_hash_in_a_page_title_is_no_tag(self):
        titles = ["Tagung #Klima 2026 | Verband", "C# in 10 Minuten", "#1 der Charts"]
        self.assertEqual(regex_chain([(vs.DEFUSE_TAG, "＃")], titles),
                         ["Tagung ＃Klima 2026 | Verband", "C# in 10 Minuten", "＃1 der Charts"])

    def test_a_taken_name_gets_date_and_time(self):
        self.assertEqual(regex_chain([vs.TIMESTAMP], ["2026-10-31T01:12:41+01:00"]), ["2026-10-31 011241"])

    def test_the_link_carries_the_name_given_not_the_one_read_back(self):
        # The stored file's name comes back decomposed; the link must use the
        # name the shortcut chose itself.
        wf, _ = vs.finalize(vs.file_picker(VAULTS, HOME))
        entries = [a["WFWorkflowActionParameters"]["WFTextActionText"]["Value"] for a in wf["WFWorkflowActions"]
                   if a["WFWorkflowActionIdentifier"] == "is.workflow.actions.gettext"
                   and "[[" in a["WFWorkflowActionParameters"]["WFTextActionText"]["Value"]["string"]]
        self.assertEqual(len(entries), 4)   # two vaults, Mac and iPhone each
        for entry in entries:
            link_start = entry["string"].index("[[")
            inside = [ref for pos, ref in entry["attachmentsByRange"].items()
                      if int(pos.strip("{}").split(",")[0]) > link_start]
            self.assertIn({"Type": "Variable", "VariableName": "stored"}, inside)


@unittest.skipUnless(sys.platform == "darwin", "needs NSRegularExpression")
class NotePipeline(unittest.TestCase):
    CASES = {
        "Angebot prüfen": "- [ ] Angebot prüfen ➕ 2026-10-30",
        "- [ ] Angebot prüfen": "- [ ] Angebot prüfen ➕ 2026-10-30",
        "[x] erledigt": "- [ ] erledigt ➕ 2026-10-30",
        "- Stichpunkt": "- [ ] Stichpunkt ➕ 2026-10-30",
        "* Stichpunkt": "- [ ] Stichpunkt ➕ 2026-10-30",
        "+49 170 1234567 zurückrufen": "- [ ] +49 170 1234567 zurückrufen ➕ 2026-10-30",
        "-5 Grad": "- [ ] -5 Grad ➕ 2026-10-30",
        "\n\n  Titel": "- [ ] Titel ➕ 2026-10-30",
        "Titel\n": "- [ ] Titel ➕ 2026-10-30",
        "Titel\n\nZeile zwei\n  \nZeile drei\n": "- [ ] Titel ➕ 2026-10-30\n    Zeile zwei\n    Zeile drei",
        "#sh: Thema": "- [ ] #sh: Thema ➕ 2026-10-30",
        # A bookmark from a shared web page: title as the task, address below.
        "Web - Gen-Z-Protest | tagesschau.de\nhttps://www.tagesschau.de/x-100.html":
            "- [ ] Web - Gen-Z-Protest | tagesschau.de ➕ 2026-10-30\n    https://www.tagesschau.de/x-100.html",
    }

    def test_cases(self):
        results = pipeline(list(self.CASES))
        for (typed, expected), got in zip(self.CASES.items(), results):
            with self.subTest(typed=typed):
                self.assertEqual(got, expected)


if __name__ == "__main__":
    unittest.main(verbosity=2)
