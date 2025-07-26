osascript -e "display notification \"Committing ${title} to vault.\" with title \"PDF from Scribe to Obsidian\" subtitle \"${vaultName}\""

cd "${vaultPath}" || exit 202
git pull > /dev/null 2>&1 || exit 203
git add "${title}.pdf" "${title}.md" || exit 204

# Check if a staged file exists in git
if git diff --cached --exit-code; then
  osascript -e "display notification \"${title} is unchanged.\" with title \"PDF from Scribe to Obsidian\" subtitle \"${vaultName}\""
  exit 0
fi

git commit -m "Add note ${title}" || exit 205
git push || exit 206
