#!/bin/bash

# Downloads a PDF into the target dir and creates a note that also contains the transcription if it exists.
#
# Inputs:
# - Stdin: Complete source of the Kindle mail
# - Arg 1: Directory to store the files in
# - Arg 2: Name of the vault (currently not used)
#
# Returns the title of the created note for using it in notifications.
# If a matching Markdown note already exists, returns nothing.

# DEBUG set -x
set -e -o pipefail

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# Source vault data
source "${HOME}/private/obsidian-vaults.sh"
# Sample of sourced data:
# vaultNames=(\
#   "Work vault" \
#   "Personal vault"
# )
# vaultPaths=( \
#   "${HOME}/obsidian-work" \
#   "${HOME}/obsidian-personal"
# )
# vaultNoteTitleRegexes=( \
#   "^work " \
#   "^" \
# )
# vaultPostProcessScripts=( \
#   "scribe2obsidian-commit.sh" \
#   "" \
# )
# Notes with title prefixed by 'work ' are imported to Work vault, all other to Personal vault
# Please note: first vault with matching regex is used

# Get source of mail from stdin
msgSource=$(</dev/stdin)
# DEBUG msgSource=$(<~/projects/dotfiles/files/bin/scribe2obsidian-message.txt)
# DEBUG echo "${msgSource}" > ~/projects/dotfiles/files/bin/scribe2obsidian-message.txt

# shellcheck disable=SC2001
msgSource=$(sed 's/=$//' <<< "${msgSource}" | tr -d '\n' | sed 's/=3D/=/g')

# Extract url for txt file
txtUrl=$(grep -Eo 'https://www.amazon.de/gp/f.html?[^"]*\.txt[^"]*' <<< "${msgSource}" || echo "")

# Extract url for pdf file
pdfUrl=$(grep -Eo 'https://www.amazon.de/gp/f.html?[^"]*\.pdf[^"]*' <<< "${msgSource}" || echo "")

# Get title of note:
# - decode url-encoded characters twice:
#   - first decode the url parameter
#   - then decode general url-decoded characters like spaces
# - grep title from url
# - trim newlines
# - replace unsafe characters (not allowed as filename or problematic for Obsidian links) with underscore
title=$(python3 -c 'import sys, urllib.parse as ul; print(ul.unquote_plus(ul.unquote_plus(sys.stdin.read())))' <<< "${pdfUrl}" | sed 's/\.pdf\?.*$//g' | sed 's|^.*https://kindle-content-requests.prod.s3.amazonaws.com/[-0-9a-z]*/||g' | tr -d '\n')
title=$(echo "${title}" | tr ':/\#^|[]' '_')

# Use the first vault with matching title regex as target
vaultPath=""
vaultName=""
# shellcheck disable=SC2154
for i in "${!vaultNames[@]}"; do
    if echo "${title}" | grep -Eq "${vaultNoteTitleRegexes[$i]}"; then
      vaultName="${vaultNames[$i]}"
      vaultPath="${vaultPaths[$i]}"
      vaultPostProcessScript="${vaultPostProcessScripts[$i]}"
      # Remove prefix including trailing spaces from title
      title=$(echo "${title}" | sed -r "s|${vaultNoteTitleRegexes[$i]} *||")
      break
    fi
done
# No name or path for a matching vault found
[ "${vaultName}" = "" ] && echo "Error: Name of vault not found." && exit 101
[ "${vaultPath}" = "" ] && echo "Error: Path of vault not found." && exit 102

# Get name of files to create
noteFilename="${vaultPath}/${title}.md"
pdfFilename="${vaultPath}/${title}.pdf"

# Skip if note already exists
if [ -f "${noteFilename}" ]; then
  osascript -e "display notification \"${title} already exists.\" with title \"PDF from Scribe to Obsidian\" subtitle \"${vaultName}\""
  exit 0
fi

# Download pdf file
if ! curl -sLf "${pdfUrl}" -o "${pdfFilename}"; then
  echo "Error: Unable to download PDF for '${title}'."
  exit 103
fi

# Create Markdown note
echo "# ${title}" > "${noteFilename}"
{
  echo ''
  echo "[[${title}.pdf]]"
} >> "${noteFilename}"

# Transcription found
if [ "${txtUrl}" != "" ]; then
  # Download txt file and add transcription to note
  {
    echo ''
    echo '## Transcription'
    echo ''
    if ! curl -sLf "${txtUrl}"; then
      echo "Error: Unable to download transcription for '${title}'."
      exit 104
    fi
  } >> "${noteFilename}"

  # Adding todo items by replacing "*" with "- [ ] " and inserting a newline before if it ocurrs in the middle of a line
  sed -i '' 's/^\(\s*\)\*/\1- [ ] /' "${noteFilename}" # At the bignning of a line
  sed -i '' 's/\*/\n- [ ] /' "${noteFilename}" # In the middle of text: create new line

  # Adding space if "-" is the first character and another one is directly following. Spaces are often not recognized for bullet lists.
  sed -i '' 's/^\(\s*\)-\([^ ]\)/\1- \2/' "${noteFilename}" # At the bignning of a line

  # Create links to pages in PDF by replacing "Seite XY" that follows an empty line
  sed -i '' '/^$/,/^Seite \(.*\)$/s/^Seite \([0-9]*\)$/[['"${title}"'.pdf#page=\1|Seite \1]]/' "${noteFilename}"
fi

# Source post processing script if it exists
if [ -f "${SCRIPT_DIR}/${vaultPostProcessScript}" ]; then
  . "${SCRIPT_DIR}/${vaultPostProcessScript}"
fi

osascript -e "display notification \"${title} imported.\" with title \"PDF from Scribe to Obsidian\" subtitle \"${vaultName}\""
