#!/bin/bash

# Please note: cron must be granted full disk access for cp to work
# See: https://apple.stackexchange.com/questions/434375/under-macos-10-15-7-why-cannot-cron-find-files-on-my-external-hard-drive

cd "${HOME}/projects/obsidian-seal/Supernote" || exit 202
git pull > /dev/null 2>&1 || exit 203
rsync -a "${HOME}/projects/supernote-cloud/supernote_data/mail@scherermichael.net/Supernote/Note/work/"* "${HOME}/projects/obsidian-seal/Supernote"
git add -f . || exit 204

# Check if a staged file exists in git
if git diff --cached --exit-code; then
  # osascript -e "display notification \"Notes are unchanged.\" with title \"Supernote to Obsidian\""
  exit 0
fi

osascript -e "display notification \"Committing notes to vault.\" with title \"Supernote to Obsidian\""

git commit -m "Add Supernote notes" || exit 205
git push || exit 206

osascript -e "display notification \"Changes pushed to remote.\" with title \"Supernote to Obsidian\""
