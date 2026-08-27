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

VAULT="${HOME}/projects/obsidian-seal"
SCRIPTS="${VAULT}/zz-templates/scripts"
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

cd "${VAULT}/Supernote" || exit 202
git pull >/dev/null 2>&1 || die "pull" "Synchronisation steht: git pull scheitert" 203

# Alle Geraeteordner, nicht eine feste Nummer: im Container steht je Geraet
# einer, und die Nummer im Pfad waere beim Geraetewechsel eine lautlose
# Zeitbombe. "-u" laesst nie eine neuere Datei im Ziel ueberschreiben, also
# ist die Reihenfolge gleichgueltig und ein liegengebliebenes Geraet kann
# frische Notizen nicht ueberschreiben.
shopt -s nullglob
for work in "${CONTAINER}"/*/Supernote/Note/work; do
    rsync -au "${work}/"* "${VAULT}/Supernote/" 2>/dev/null
done
shopt -u nullglob

git add -f . || die "add" "Synchronisation steht: git add scheitert" 204

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
notes=()
while IFS= read -r -d '' rel; do
    [ -f "${VAULT}/${rel}" ] && notes+=("${VAULT}/${rel}")
done < <(git -c core.quotepath=false diff --cached --name-only -z -- '*.note')

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
        "${RENDERER}" "${SCRIPTS}/supernote-pdf.py" ${notes[@]+"${notes[@]}"}
    fi
    /usr/bin/python3 "${SCRIPTS}/supernote-markdown.py" ${notes[@]+"${notes[@]}"}
fi

# Erst das Grosse einchecken. Es ist nicht wettkampfkritisch, und die
# Ausdrucke muessen fertig sein, BEVOR ein Stern erfasst wird: ein
# erfasster Stern wird nie wieder erfasst, und ohne aktuellen Ausdruck
# zeigte seine Aufgabe fuer immer auf die .note statt auf die Seite.
if ! git diff --cached --quiet; then
    notify "Committing notes to vault."
    git commit -m "Add Supernote notes" >/dev/null \
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
git pull >/dev/null 2>&1 || die "pull" "Synchronisation steht: git pull scheitert" 203
/usr/bin/python3 "${SCRIPTS}/supernote-capture.py" >/dev/null

# Aufgabe und Kennung im selben Commit: kommt er nicht zustande, ist auch
# die Kennung nicht in der Welt, und der naechste Lauf sammelt den Stern
# wieder ein. Ein "gesehen" ohne die zugehoerige Aufgabe kann es so nicht
# geben.
cd "${VAULT}" || exit 202
git add "@_Inbox/_Inbox.md" "zz-templates/scripts/supernote-seen.txt" 2>/dev/null
if ! git diff --cached --quiet; then
    git commit -m "Supernote-Sterne in den Inbox" >/dev/null \
        || die "commit" "Synchronisation steht: git commit scheitert" 205
    git push >/dev/null 2>&1 \
        || die "push" "Synchronisation steht: git push scheitert" 206
fi

report "ok" "Supernote-Synchronisation laeuft wieder"
exit 0
