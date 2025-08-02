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

finish () {
    exitCode=$?
    if [[ $exitCode -ne 0 ]]; then
      osascript -e "display notification \"Finished with error: ${exitCode}.\" with title \"PDF from Scribe to Obsidian\" subtitle \"${vaultName}\""
    fi
}
trap 'finish' EXIT

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
      # Remove prefix and suffix
      if [ -n "${vaultNoteTitlePrefixRegexes[$i]}" ]; then
        title=$(echo "${title}" | sed -r "s|${vaultNoteTitlePrefixRegexes[$i]}||")
      fi
      if [ -n "${vaultNoteTitleSuffixRegexes[$i]}" ]; then
        title=$(echo "${title}" | sed -r "s|${vaultNoteTitleSuffixRegexes[$i]}||")
      fi
      break
    fi
done
# No name or path for a matching vault found
[ "${vaultName}" = "" ] && echo "Error: Name of vault not found." && exit 101
[ "${vaultPath}" = "" ] && echo "Error: Path of vault not found." && exit 102

# Get name of files to create
noteFilename="${vaultPath}/${title}.md"
pdfFilename="${vaultPath}/${title}.pdf"

# # Skip if note already exists
# if [ -f "${noteFilename}" ]; then
#   osascript -e "display notification \"${title} already exists.\" with title \"PDF from Scribe to Obsidian\" subtitle \"${vaultName}\""
#   exit 0
# fi

# Download pdf file
if ! curl -sLf "${pdfUrl}" -o "${pdfFilename}"; then
  echo "Error: Unable to download PDF for '${title}'."
  exit 103
fi

# Transcription found
if [ "${txtUrl}" != "" ]; then
  # Create Markdown note
  echo "# ${title}" > "${noteFilename}"
  {
    echo ''
    echo '## Preview'
    echo ''
    echo "![[${title}.pdf]]"
  } >> "${noteFilename}"

  # Add header for transcription section
  {
    echo ''
    echo '## Transcription'
  } >> "${noteFilename}"

  # Create temp file for content of transcript
  transcriptFilename=$(mktemp)
  # Empty first line is important for linkifying the page numbers
  echo '' > "${transcriptFilename}"

  # Download txt file
  {
    if ! curl -sLf "${txtUrl}"; then
      echo "Error: Unable to download transcription for '${title}'."
      exit 104
    fi
  } >> "${transcriptFilename}"

  # Adding todo items by replacing "*" with "- [ ] " and inserting a newline before if it ocurrs in the middle of a line
  sed -i '' 's/\([[:space:]]*\)\*/\1- [ ] /' "${transcriptFilename}" # At the bignning of a line
  sed -i '' 's/\*/\n- [ ] /g' "${transcriptFilename}" # In the middle of text: create new line

  # Adding space if "-" is the first character and another one is directly following. Spaces are often not recognized for bullet lists.
  sed -i '' 's/^\([[:space:]]*\)-\([^ ]\)/\1- \2/g' "${transcriptFilename}" # At the bignning of a line

  # Removing spaces between hash tag and tag name.
  sed -i '' 's/# */#/g' "${transcriptFilename}"
  # Adding spaces before hash tag.
  sed -i '' 's/\([^[:space:]]\)#/\1 #/g' "${transcriptFilename}"

  # Create links to pages in PDF by replacing "Seite XY" that follows an empty line
  sed -i '' '/^$/,/^Seite \(.*\)$/s/^Seite \([0-9]*\)$/### [['"${title}"'.pdf#page=\1|Seite \1]]\n/' "${transcriptFilename}"

  # Copy patched content of transcript to note file
  cat "${transcriptFilename}" >> "${noteFilename}"
  # Remove temp file
  rm -f "${transcriptFilename}"
fi

# Source post processing script if it exists
if [ -f "${SCRIPT_DIR}/${vaultPostProcessScript}" ]; then
  . "${SCRIPT_DIR}/${vaultPostProcessScript}"
fi

osascript -e "display notification \"${title} imported.\" with title \"PDF from Scribe to Obsidian\" subtitle \"${vaultName}\""
