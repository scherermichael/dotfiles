// vault-note: the quick note on the Mac. One dialog, one inbox task.
//
// Started by a BetterTouchTool hotkey, with the label of the vault to select
// first as the only argument:
//
//     ~/.local/bin/vault-note Private
//
// Not a shortcut, for two reasons. A shortcut needs 0.5 to 1.3 s before its
// dialog stands, this about 0.3 s. And a shortcut gets a hotkey only through
// Services, which Safari does not offer; BTT's hotkey works in every app.
//
// The iPhone keeps the Shortcuts picker, and both must write the same entry.
// So the patterns are not written down here: the installer takes them from
// vault_shortcuts.py and builds them in, with this Mac's vaults, as the
// generated file next to this one (embeddedConfig). The steps below follow
// Shortcut.note() there.
//
//     vault-note [LABEL]            the dialog, LABEL's vault selected
//     vault-note --add LABEL        stdin -> the vault's inbox, without a dialog
//     vault-note --entry            stdin -> the entry on stdout
//     --today DATE                  instead of today
//
// --add and --entry serve the tests, and scripts that want to drop a note.
//
// Built by `vault_shortcuts.py install`; see README.md next to this file.

import AppKit
import Foundation

struct Vault: Decodable {
    let label: String
    /// The vault's inbox folder on this Mac.
    let inbox: String
}

struct Config: Decodable {
    /// In the order of the vault list: Cmd+1 is the first.
    let vaults: [Vault]
    /// Each a [pattern, replacement] pair. `blank` and `dueFound` turn a hit
    /// into the whole text being their marker, as in the shortcut.
    let blank: [String]
    let trim: [String]
    let dueFound: [String]
    let dueDays: [String]
    let dueMarker: [String]
    /// The rest of the note pipeline; "{date}" and "{due}" are filled in.
    let pipeline: [[String]]
}

func replace(_ text: String, _ step: [String]) -> String {
    // The same engine and template syntax as Shortcuts' Replace Text.
    guard let regex = try? NSRegularExpression(pattern: step[0]) else {
        fail("Bad pattern: \(step[0])")
    }
    return regex.stringByReplacingMatches(in: text, range: NSRange(text.startIndex..., in: text),
                                          withTemplate: step[1])
}

func isoDate(_ date: Date) -> String {
    let format = DateFormatter()
    format.calendar = Calendar(identifier: .gregorian)
    format.locale = Locale(identifier: "en_US_POSIX")
    format.dateFormat = "yyyy-MM-dd"
    return format.string(from: date)
}

/// The inbox task for what was typed, or nil when there is nothing to write.
func entry(for text: String, today: Date, config: Config) -> String? {
    if replace(text, config.blank) == config.blank[1] {
        return nil
    }
    var entry = replace(text, config.trim)
    var due = ""
    if replace(entry, config.dueFound) == config.dueFound[1] {
        let days = Int(replace(entry, config.dueDays)) ?? 0
        due = " 📅 " + isoDate(Calendar.current.date(byAdding: .day, value: days, to: today)!)
        entry = replace(entry, config.dueMarker)
    }
    for step in config.pipeline {
        let template = step[1].replacingOccurrences(of: "{date}", with: isoDate(today))
                              .replacingOccurrences(of: "{due}", with: due)
        entry = replace(entry, [step[0], template])
    }
    return entry
}

/// Appends as Shortcuts' Append to Text File does: the entry on a line of its
/// own, and no line break after it. Otherwise a note from the Mac and one from
/// the iPhone would leave a blank line between them.
func append(_ entry: String, toInboxIn folder: String) throws {
    // forUpdating fails on a missing file: a wrong path must not quietly
    // start a new inbox nobody looks at.
    let handle = try FileHandle(forUpdatingAtPath: folder + "/_Inbox.md")
        .orThrow("No _Inbox.md in \(folder)")
    defer { try? handle.close() }
    var text = entry
    let end = try handle.seekToEnd()
    if end > 0 {
        try handle.seek(toOffset: end - 1)
        if try handle.read(upToCount: 1) != Data("\n".utf8) {
            text = "\n" + text
        }
        try handle.seekToEnd()
    }
    try handle.write(contentsOf: Data(text.utf8))
}

struct Failure: LocalizedError {
    let errorDescription: String?
}

extension Optional {
    func orThrow(_ message: String) throws -> Wrapped {
        guard let value = self else { throw Failure(errorDescription: message) }
        return value
    }
}

var dialogMode = false

func fail(_ message: String) -> Never {
    if dialogMode {
        // Started by a hotkey there is no terminal to read stderr in.
        let app = NSApplication.shared
        app.setActivationPolicy(.accessory)
        let alert = NSAlert()
        alert.alertStyle = .warning
        alert.messageText = "Vault note"
        alert.informativeText = message
        app.activate(ignoringOtherApps: true)
        alert.runModal()
    } else {
        FileHandle.standardError.write(Data((message + "\n").utf8))
    }
    exit(1)
}

/// Cmd+1, Cmd+2, ... choose the vault while the cursor stays in the text field.
/// Menu items, because a key equivalent of the main menu works whatever has
/// the focus; the popup's own items only show the keys.
final class VaultKeys: NSObject {
    let popup: NSPopUpButton

    init(_ popup: NSPopUpButton) {
        self.popup = popup
    }

    @objc func choose(_ sender: NSMenuItem) {
        popup.selectItem(at: sender.tag)
    }
}

/// Without a main menu an app has no Edit commands, and Cmd+V, Cmd+A, Cmd+Z
/// do nothing in the text field. Not shown: the app has no menu bar.
func mainMenu(vaults: [Vault], keys: VaultKeys?) -> NSMenu {
    let main = NSMenu()
    func add(_ title: String, _ items: [NSMenuItem]) {
        let menu = NSMenu(title: title)
        items.forEach(menu.addItem)
        let item = NSMenuItem()
        item.submenu = menu
        main.addItem(item)
    }
    add("Edit", [("Undo", "undo:", "z"), ("Redo", "redo:", "Z"), ("Cut", "cut:", "x"),
                 ("Copy", "copy:", "c"), ("Paste", "paste:", "v"), ("Select All", "selectAll:", "a")]
        .map { NSMenuItem(title: $0.0, action: Selector($0.1), keyEquivalent: $0.2) })
    if let keys = keys {
        add("Vault", vaults.prefix(9).enumerated().map { index, vault in
            let item = NSMenuItem(title: vault.label, action: #selector(VaultKeys.choose(_:)),
                                  keyEquivalent: String(index + 1))
            item.target = keys
            item.tag = index
            return item
        })
    }
    return main
}

/// Ends the dialog's modal run with the button pressed.
final class DialogButtons: NSObject {
    @objc func save(_ sender: Any?) {
        NSApp.stopModal(withCode: .OK)
    }

    @objc func cancel(_ sender: Any?) {
        NSApp.stopModal(withCode: .cancel)
    }
}

// Targets are weak references; these keep the buttons' and Cmd+1...'s alive.
var dialogButtons = DialogButtons()
var vaultKeys: VaultKeys?

/// (vault, text typed), or nil when cancelled. Return saves, Option+Return
/// starts a new line, Esc cancels.
///
/// A window of its own rather than an NSAlert: an alert lays out its title
/// itself, and the vault's dropdown is to stand right beside it.
func ask(_ vaults: [Vault], selected: Int) -> (Vault, String)? {
    let app = NSApplication.shared
    app.setActivationPolicy(.accessory)

    let title = NSTextField(labelWithString: vaults.count > 1 ? "Add to inbox:"
                                                              : "Add to \(vaults[selected].label) inbox:")
    title.font = .boldSystemFont(ofSize: NSFont.systemFontSize)
    var header: [NSView] = [title]
    var popup: NSPopUpButton?
    if vaults.count > 1 {
        let choice = NSPopUpButton(frame: .zero, pullsDown: false)
        for (index, vault) in vaults.enumerated() {
            choice.addItem(withTitle: vault.label)
            if index < 9 {
                choice.lastItem?.keyEquivalent = String(index + 1)
                choice.lastItem?.keyEquivalentModifierMask = .command
            }
        }
        choice.selectItem(at: selected)
        header.append(choice)
        popup = choice
        vaultKeys = VaultKeys(choice)
    }
    let titleRow = NSStackView(views: header)
    titleRow.spacing = 8

    // Three lines high and wrapping, so a longer note stays readable; Return
    // still ends it, as in the shortcut's dialog.
    let field = NSTextField()
    field.usesSingleLineMode = false
    field.cell?.wraps = true
    field.cell?.isScrollable = false
    field.translatesAutoresizingMaskIntoConstraints = false
    field.widthAnchor.constraint(equalToConstant: 380).isActive = true
    field.heightAnchor.constraint(equalToConstant: 62).isActive = true

    let ok = NSButton(title: "OK", target: dialogButtons, action: #selector(DialogButtons.save(_:)))
    ok.keyEquivalent = "\r"
    let cancel = NSButton(title: "Cancel", target: dialogButtons, action: #selector(DialogButtons.cancel(_:)))
    cancel.keyEquivalent = "\u{1b}"
    let gap = NSView()
    gap.setContentHuggingPriority(.defaultLow, for: .horizontal)
    let buttonRow = NSStackView(views: [gap, cancel, ok])
    buttonRow.spacing = 12

    let content = NSStackView(views: [titleRow, field, buttonRow])
    content.orientation = .vertical
    content.alignment = .leading
    content.spacing = 12
    content.edgeInsets = NSEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
    buttonRow.widthAnchor.constraint(equalTo: field.widthAnchor).isActive = true

    // Titled for the rounded corners and the shadow of a dialog, but with
    // neither title nor window buttons; the background moves it.
    let window = NSPanel(contentRect: .zero, styleMask: [.titled, .fullSizeContentView],
                         backing: .buffered, defer: false)
    window.titleVisibility = .hidden
    window.titlebarAppearsTransparent = true
    window.isMovableByWindowBackground = true
    for button in [NSWindow.ButtonType.closeButton, .miniaturizeButton, .zoomButton] {
        window.standardWindowButton(button)?.isHidden = true
    }
    window.contentView = content
    window.setContentSize(content.fittingSize)
    window.initialFirstResponder = field
    // Above everything even if activation is refused: a dialog behind the
    // current window would swallow the next keystrokes unseen.
    window.level = .floating
    window.center()

    app.mainMenu = mainMenu(vaults: vaults, keys: vaultKeys)
    app.activate(ignoringOtherApps: true)
    window.makeKeyAndOrderFront(nil)
    let answer = app.runModal(for: window)
    window.orderOut(nil)
    guard answer == .OK else { return nil }
    return (vaults[popup?.indexOfSelectedItem ?? selected], field.stringValue)
}

var arguments = Array(CommandLine.arguments.dropFirst())

func option(_ name: String) -> String? {
    guard let i = arguments.firstIndex(of: name), i + 1 < arguments.count else { return nil }
    defer { arguments.removeSubrange(i...(i + 1)) }
    return arguments[i + 1]
}

let todayGiven = option("--today")
let addTo = option("--add")
dialogMode = addTo == nil && arguments.first != "--entry"

guard let data = Data(base64Encoded: embeddedConfig),
      let config = try? JSONDecoder().decode(Config.self, from: data) else {
    fail("The built-in vault list is unreadable. Run scripts/obsidian-shortcuts/install.sh.")
}

var today = Date()
if let given = todayGiven {
    let format = DateFormatter()
    format.locale = Locale(identifier: "en_US_POSIX")
    format.dateFormat = "yyyy-MM-dd"
    guard let date = format.date(from: given) else { fail("--today wants YYYY-MM-DD, not \(given)") }
    today = date
}

func index(of label: String) -> Int {
    guard let found = config.vaults.firstIndex(where: { $0.label == label }) else {
        let known = config.vaults.map(\.label).joined(separator: ", ")
        fail("No vault \"\(label)\" on this Mac" + (known.isEmpty ? "." : "; there is \(known)."))
    }
    return found
}

let typed: String
let target: Vault
if let label = addTo {
    target = config.vaults[index(of: label)]
    typed = String(decoding: FileHandle.standardInput.readDataToEndOfFile(), as: UTF8.self)
} else if !dialogMode {
    let input = String(decoding: FileHandle.standardInput.readDataToEndOfFile(), as: UTF8.self)
    if let result = entry(for: input, today: today, config: config) {
        FileHandle.standardOutput.write(Data(result.utf8))
    }
    exit(0)
} else {
    if config.vaults.isEmpty {
        fail("No vault of the list is on this Mac.")
    }
    // Without a label the first vault; a wrong one is reported, since it
    // means a BTT trigger that does not do what its key promises.
    guard let (vault, answer) = ask(config.vaults, selected: arguments.first.map(index(of:)) ?? 0) else {
        exit(0)
    }
    target = vault
    typed = answer
}
guard let result = entry(for: typed, today: today, config: config) else {
    exit(0)
}
do {
    try append(result, toInboxIn: target.inbox)
} catch {
    fail(error.localizedDescription)
}
