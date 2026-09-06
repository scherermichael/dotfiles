#!/bin/bash
#
# Supernote -> Vault: abholen, verarbeiten, einchecken.
#
# Please note: cron must be granted full disk access for cp to work
# See: https://apple.stackexchange.com/questions/434375/under-macos-10-15-7-why-cannot-cron-find-files-on-my-external-hard-drive
#
# Hier laeuft auch die Verarbeitung, nicht nur das Abholen. Der
# Capture-Dienst hat das einmal getan, und das war der falsche Ort: den
# gibt es, um an die Bedienungshilfen-Rechte zu kommen (markierten Text aus
# fremden Apps lesen), und Dateien zu lesen braucht die nicht. Vor allem
# sah er nur zu, waehrend er lief - was ankam, waehrend er aus war, galt
# beim Start als bekannt und wurde nie verarbeitet.
#
# Der Takt steht in der crontab auf zehn Minuten. Eine Minute war zum
# Ausprobieren.

set -uo pipefail

# Der Vault kommt als Argument, damit dasselbe Skript zwei bedienen kann.
# Alles Weitere steht in seiner .gtd.json - wie die Ordner heissen, welcher
# Geraeteordner ihm gehoert. Fehlt die Datei, gelten die Werte des
# Arbeits-Vaults; dann verhaelt sich der Aufruf wie eh und je.
VAULT="${1:-${HOME}/projects/obsidian-seal}"
lies_config() {
    /usr/bin/python3 -c 'import json,sys
vorgabe = {"tools":"zz-templates","inbox":"@_Inbox","supernote":"Supernote","device":"work"}
try:
    vorgabe.update(json.load(open(sys.argv[1] + "/.gtd.json")))
except Exception:
    pass
print(vorgabe[sys.argv[2]])' "${VAULT}" "$1"
}
TOOLS="$(lies_config tools)"
INBOX="$(lies_config inbox)"
SUPERNOTE="$(lies_config supernote)"
DEVICE="$(lies_config device)"
SCRIPTS="${VAULT}/${TOOLS}/scripts"

# Ohne Repository faellt alles Eincheckende weg. Der Rest laeuft weiter:
# jedes Python-Skript entscheidet selbst, was aussteht - der Index war nur
# eine Abkuerzung fuer die Arbeitsliste, nie die Bedingung.
if [ -d "${VAULT}/.git" ]; then MIT_GIT=1; else MIT_GIT=0; fi
CONTAINER="${HOME}/Library/Containers/com.ratta.supernote/Data/Library/Application Support/com.ratta.supernote"
STATE_DIR="${HOME}/.local/state/supernote-sync"
LOCK="${STATE_DIR}/lock"
LAST_STATE="${STATE_DIR}/last-state"

mkdir -p "${STATE_DIR}"

notify() {
    /usr/bin/osascript -e "display notification \"${1//\"/\\\"}\" with title \"Supernote to Obsidian\"" >/dev/null 2>&1
}

# Melden, wenn sich der Zustand aendert - nicht alle zehn Minuten dasselbe.
# Ein haengendes Repo meldete sich sonst sechsmal die Stunde, und nach dem
# dritten Mal sieht man hin und weg.
report() {
    local state="$1" message="$2" previous=""
    [ -f "${LAST_STATE}" ] && previous="$(cat "${LAST_STATE}")"
    if [ "${state}" != "${previous}" ]; then
        printf '%s' "${state}" > "${LAST_STATE}"
        notify "${message}"
    fi
}

die() {
    report "$1" "$2"
    exit "$3"
}

# Zufallsschlaf VOR dem Schloss. "*/10" feuert auf runden Minuten, und weil
# die Uhren ueber NTP gleich gehen, startet ein zweiter Rechner sonst im
# selben Augenblick - beide hielten dieselben Sterne fuer neu und legten
# beide eine Aufgabe an. Wer schliefe, waehrend er das Schloss haelt,
# sperrte die aus, die etwas zu tun haetten.
# SUPERNOTE_JITTER=0 nimmt ihn zum Ausprobieren heraus - sonst wartet man
# beim Nachsehen im Schnitt zweieinhalb Minuten auf nichts.
sleep $((RANDOM % (${SUPERNOTE_JITTER:-300} + 1)))

# Ein grosser Rueckstand braucht Minuten. Ohne das Schloss liefen zwei
# Laeufe ineinander.
#
# macOS hat kein flock(1). Das Schloss kommt deshalb ueber den geerbten
# Deskriptor 9: das Kind legt es an, aber es haengt an der offenen Datei,
# nicht am Prozess - es ueberlebt also das Kind und faellt weg, sobald
# diese Shell endet. Auch beim Abschuss, weshalb keine Leiche liegen
# bleibt, die der naechste Lauf wegraeumen muesste.
exec 9>"${LOCK}"
/usr/bin/python3 -c 'import fcntl, sys
try:
    fcntl.flock(9, fcntl.LOCK_EX | fcntl.LOCK_NB)
except OSError:
    sys.exit(1)' 9<&9 || exit 0

cd "${VAULT}/${SUPERNOTE}" || exit 202
[ "${MIT_GIT}" = 1 ] && { git pull >/dev/null 2>&1 \
    || die "pull" "Synchronisation steht: git pull scheitert" 203; }

# Der juengste Geraeteordner, nicht alle. Ueber das Muster und nicht ueber
# eine feste Nummer: im Container steht je Geraet einer, und die Nummer im
# Pfad waere beim Geraetewechsel eine lautlose Zeitbombe.
#
# Frueher liefen alle. "-u" verhindert zwar, dass ein liegengebliebenes
# Geraet frische Notizen ueberschreibt - aber nicht, dass es geloeschte
# nachliefert. Genau das geschah: der Stand vom 2026-03-03 trug
# "projects/COSAP-Team.note" noch am alten Ort, waehrend das lebende Geraet
# es laengst nach "projects/archived/" verschoben hatte. Jeder Lauf legte
# die alte Kopie zurueck, und Aufraeumen im Vault war zwecklos - dazu 13
# weitere Leichen aus Umbenennungen, die niemand loswurde.
#
# Juengster Ordner heisst: die spaeteste Zeitmarke unter seinen
# Notizbuechern. Nicht die des Ordners selbst - die aendert sich auch,
# wenn die App nur eine Cache-Datei anfasst.
shopt -s nullglob
work=""
neuste=0
for kandidat in "${CONTAINER}"/*/Supernote/Note/"${DEVICE}"; do
    marke=$(find "${kandidat}" -name '*.note' -exec stat -f '%m' {} + 2>/dev/null \
            | sort -rn | head -1)
    if [ -n "${marke}" ] && [ "${marke}" -gt "${neuste}" ]; then
        neuste="${marke}"
        work="${kandidat}"
    fi
done
shopt -u nullglob

[ -n "${work}" ] || die "container" \
    "Synchronisation steht: kein Geraeteordner mit Notizbuechern im Container" 207

rsync -au "${work}/"* "${VAULT}/${SUPERNOTE}/" 2>/dev/null

# Aufraeumen, was eine Umbenennung am Geraet zurueckgelassen hat: ohne
# --delete bleibt der alte Name liegen, samt Ausdruck und Transkript, und
# die Sterne in der Inbox zeigen weiter darauf.
#
# VOR dem Rendern, nicht danach: supernote-markdown.py fuehrt berichtigten
# Text und die [x]-Marken aus der BESTEHENDEN .md zusammen. Die muss dazu
# schon unter dem neuen Namen liegen - sonst ist die Handarbeit weg.
#
# Aus dem Cron sieht niemand stdout, deshalb drei Wege: alles ins Log, was
# offen bleibt einmal als Mitteilung (report meldet nur bei Wechsel), und
# die Zusammenfassung in die Commit-Nachricht weiter unten.
tidy_zusatz=""
{
    printf '\n=== %s ===\n' "$(date '+%F %T')"
    tidy=$(/usr/bin/python3 "${SCRIPTS}/supernote-tidy.py" --vault "${VAULT}" --device "${work}" 2>&1)
    printf '%s\n' "${tidy}"
} >> "${STATE_DIR}/tidy.log" 2>&1
tidy_kurz=$(printf '%s\n' "${tidy}" | grep '^ZUSAMMENFASSUNG:' | tail -1)
case "${tidy_kurz}" in
    *"nichts zu tun"|"") ;;
    *) tidy_zusatz="${tidy_kurz#ZUSAMMENFASSUNG: }" ;;
esac
# Melden, was von Hand nachgefasst werden muss: ein unklarer Altstand und
# ein totes Sprungziel im PDF heilen beide nicht von selbst. report()
# meldet nur bei Zustandswechsel, sonst stuende dasselbe sechsmal die
# Stunde da.
case "${tidy_kurz}" in
    *unklar*|*Sprung*) report "tidy:${tidy_kurz}" "Supernote: ${tidy_kurz#ZUSAMMENFASSUNG: }" ;;
esac

[ "${MIT_GIT}" = 1 ] && { git add -f . \
    || die "add" "Synchronisation steht: git add scheitert" 204; }

# Die Liste der geaenderten Notizbuecher steht schon im Index - nach
# Inhalt, nicht nach Zeitmarke. Damit rechnet ein Lauf an zweien statt an
# 67, und weil der Commit erst nach der Verarbeitung kommt, bleibt bei
# einem Fehlschlag alles vorgemerkt: der naechste Lauf bekommt dieselbe
# Liste noch einmal. Der Index ist die Erfolgsmarke.
#
# quotepath=false, sonst kommt "Klaus K\303\274hnel - KK.note" heraus - ein
# Dateiname, den es nicht gibt. -z, weil in den Namen Leerzeichen stehen.
# Und die Pfade gelten ab der Repo-Wurzel, auch von hier unten aus.
#
# Kein "mapfile": /bin/bash ist auf macOS die 3.2 und kennt es nicht. Und
# "${arr[@]}" auf einem leeren Feld ist dort unter "set -u" schon ein
# Fehler - daher die Absicherung mit "+".
#
# Ohne Repository gibt es keinen Index und damit keine kurze Liste: dann
# laufen alle Notizbuecher durch. Das dauert laenger, ist aber richtig -
# supernote-pdf.py und supernote-markdown.py erkennen von sich aus, was
# schon fertig ist, und tun dann nichts.
notes=()
if [ "${MIT_GIT}" = 1 ]; then
    while IFS= read -r -d '' rel; do
        [ -f "${VAULT}/${rel}" ] && notes+=("${VAULT}/${rel}")
    done < <(git -c core.quotepath=false diff --cached --name-only -z -- '*.note')
else
    while IFS= read -r -d '' pfad; do
        notes+=("${pfad}")
    done < <(find "${VAULT}/${SUPERNOTE}" -name '*.note' -print0)
fi

# Den Renderer suchen, nicht voraussetzen: fest verdrahtet waere der venv
# derselbe Fehler wie die Geraetenummer, und auf einem frisch
# eingerichteten Rechner gibt es ihn nicht. Angelegt wird er hier nicht -
# "python3 -m venv" samt "pip install" braucht Netz und Minuten.
RENDERER=""
for candidate in "${SUPERNOTE_PYTHON:-}" \
                 "${HOME}/.local/venvs/obsidian-capture/bin/python3" \
                 "$(command -v python3 || true)"; do
    [ -n "${candidate}" ] && [ -x "${candidate}" ] || continue
    if "${candidate}" -c "import supernotelib" >/dev/null 2>&1; then
        RENDERER="${candidate}"
        break
    fi
done

if [ ${#notes[@]} -gt 0 ]; then
    if [ -n "${RENDERER}" ]; then
        "${RENDERER}" "${SCRIPTS}/supernote-pdf.py" --vault "${VAULT}" \
            ${notes[@]+"${notes[@]}"}
    fi
    /usr/bin/python3 "${SCRIPTS}/supernote-markdown.py" --vault "${VAULT}" \
        ${notes[@]+"${notes[@]}"}
fi

# Erst das Grosse einchecken. Es ist nicht wettkampfkritisch, und die
# Ausdrucke muessen fertig sein, BEVOR ein Stern erfasst wird: ein
# erfasster Stern wird nie wieder erfasst, und ohne aktuellen Ausdruck
# zeigte seine Aufgabe fuer immer auf die .note statt auf die Seite.
if [ "${MIT_GIT}" = 1 ] && ! git diff --cached --quiet; then
    notify "Committing notes to vault."
    # Hat der Aufraeumer etwas getan, kommt es als zweiter Absatz dazu.
    # "git log" ist damit die Chronik der Umbenennungen - die Logdatei
    # bleibt fuer die Fehlersuche, aber sie wandert nicht mit dem Vault.
    #
    # Als Feld, nicht als ${x:+...}: in der Ersetzung sind die
    # Anfuehrungszeichen blosse Zeichen, "1 umbenannt" zerfiele in zwei
    # Worte. Und "+" wie oben, weil das leere Feld unter "set -u" in der
    # bash 3.2 von macOS sonst ein Fehler ist.
    tidy_msg=()
    [ -n "${tidy_zusatz}" ] && tidy_msg=(-m "Aufgeraeumt: ${tidy_zusatz}")
    git commit -m "Add Supernote notes" ${tidy_msg[@]+"${tidy_msg[@]}"} >/dev/null \
        || die "commit" "Synchronisation steht: git commit scheitert" 205
    git push >/dev/null 2>&1 \
        || die "push" "Synchronisation steht: git push scheitert" 206
fi

# Ohne Renderer keine Sterne. Lieber gar nicht einsammeln als schlecht -
# der naechste Lauf mit Renderer holt es nach.
if [ -z "${RENDERER}" ]; then
    die "no-renderer" "Sterne nicht verarbeitet: kein Python mit supernotelib" 0
fi

# Jetzt das Kleine, und hier zaehlt jede Sekunde: von hier bis zum Schieben
# koennte ein zweiter Rechner denselben Stern fuer neu halten. Deshalb
# unmittelbar davor ziehen und gleich danach schieben - so haengt das
# Fenster nicht daran, wie viel gerade gemalt wurde.
#
# Ungefiltert ueber alle Notizbuecher: die Buchhaltung der Sterne ist
# supernote-seen.txt, nicht der Index. Waere auch das an den Index
# gebunden, fiele ein Stern durch, dessen Notizbuch schon eingecheckt, aber
# noch nicht eingesammelt war.
#
# Kein "--rebase": das verweigert den Dienst schon bei irgendeiner
# ungesicherten Aenderung im Baum - und der Vault ist praktisch immer
# schmutzig, weil in Obsidian gerade jemand tippt. Ein gewoehnliches
# Zusammenfuehren stoert sich nur an Dateien, die es selbst anfasst.
[ "${MIT_GIT}" = 1 ] && { git pull >/dev/null 2>&1 \
    || die "pull" "Synchronisation steht: git pull scheitert" 203; }
/usr/bin/python3 "${SCRIPTS}/supernote-capture.py" --vault "${VAULT}" >/dev/null

# Aufgabe und Kennung im selben Commit: kommt er nicht zustande, ist auch
# die Kennung nicht in der Welt, und der naechste Lauf sammelt den Stern
# wieder ein. Ein "gesehen" ohne die zugehoerige Aufgabe kann es so nicht
# geben.
cd "${VAULT}" || exit 202
[ "${MIT_GIT}" = 1 ] && git add "${INBOX}/_Inbox.md" \
    "${TOOLS}/scripts/supernote-seen.txt" 2>/dev/null
if [ "${MIT_GIT}" = 1 ] && ! git diff --cached --quiet; then
    git commit -m "Supernote-Sterne in den Inbox" >/dev/null \
        || die "commit" "Synchronisation steht: git commit scheitert" 205
    git push >/dev/null 2>&1 \
        || die "push" "Synchronisation steht: git push scheitert" 206
fi

# Zuletzt die Digests: markierte Stellen aus PDFs werden Literaturnotizen
# im Zettelkasten. Ganz am Ende, weil sie mit dem Notizbuch-Weg nichts zu
# tun haben - kein Commit, kein Index, der Zettelkasten liegt in iCloud.
#
# Zwei Bedingungen, beide still: ohne Token im Schluesselbund war auf
# diesem Rechner nie ein "--login", und ohne den Ordner gibt es hier
# keinen Zettelkasten. Beides ist kein Fehler, sondern heisst nur, dass
# dieser Rechner diesen Weg nicht geht.
ZETTELKASTEN="${SUPERNOTE_ZETTELKASTEN:-${HOME}/Library/Mobile Documents/iCloud~md~obsidian/Documents/Personal/Zettelkasten}"
if [ -d "${ZETTELKASTEN}/References" ] \
   && /usr/bin/security find-generic-password -s supernote-digest \
        -a token -w >/dev/null 2>&1; then
    digest=$("${RENDERER}" "${SCRIPTS}/supernote-digest.py" \
                 --zettelkasten "${ZETTELKASTEN}" 2>&1)
    digest_status=$?
    {
        printf '\n=== %s ===\n' "$(date '+%F %T')"
        printf '%s\n' "${digest}"
    } >> "${STATE_DIR}/digest.log"

    # Das Token gilt dreissig Tage und laesst sich nicht erneuern - einen
    # Refresh-Token gibt es nicht, und fuer eine Anmeldung braucht es das
    # Kennwort, das absichtlich nirgends liegt. Ohne Vorwarnung hoerten
    # die Digests eines Tages einfach auf zu kommen.
    #
    # Einmal am Tag, und NICHT ueber report(): das kennt nur einen
    # Zustand, und der wechselt am Ende jedes Laufs wieder auf "ok" -
    # die Meldung kaeme dann alle zehn Minuten. Ein Datum in einer Datei
    # ist hier das einfachere Gedaechtnis.
    ablauf=$(printf '%s\n' "${digest}" | grep '^ABLAUF:' | tail -1)
    if [ -n "${ablauf}" ]; then
        heute="$(date '+%F')"
        if [ "$(cat "${STATE_DIR}/ablauf-gemeldet" 2>/dev/null)" != "${heute}" ]; then
            printf '%s' "${heute}" > "${STATE_DIR}/ablauf-gemeldet"
            notify "${ablauf#ABLAUF: }"
        fi
    fi

    [ "${digest_status}" -eq 0 ] \
        || die "digest" "Digests nicht verarbeitet - siehe digest.log" 0
fi

report "ok" "Supernote-Synchronisation laeuft wieder"
exit 0
