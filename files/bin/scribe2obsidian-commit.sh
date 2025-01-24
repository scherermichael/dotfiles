osascript -e "display notification \"Committing ${title} to vault.\" with title \"PDF from Scribe to Obsidian\" subtitle \"${vaultName}\""
cd "${vaultPath}" || exit 202
git pull || exit 203
git add "${title}.pdf" "${title}.md" || exit 204
git commit -m "Add note ${title}" || exit 205
git push || exit 206
