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

set -e -o pipefail

# vaultPath=$1
# vaultName=$2
vaultPath="/Users/michael/Library/Mobile Documents/iCloud~md~obsidian/Documents/Personal/01 @Inbox"
vaultName="Personal vault"

msgSource=$(</dev/stdin)

# shellcheck disable=SC2001
msgSource=$(sed 's/=$//' <<< "${msgSource}" | tr -d '\n' | sed 's/=3D/=/g')

# Extract url for txt file
txtUrl=$(grep -Eo 'https://www.amazon.de/gp/f.html?[^"]*\.txt[^"]*' <<< "${msgSource}" || echo "")

# Extract url for pdf file
pdfUrl=$(grep -Eo 'https://www.amazon.de/gp/f.html?[^"]*\.pdf[^"]*' <<< "${msgSource}" || echo "")

# Get title of note:
# - decode url-encoded characters twice:
#   - first decode the url parameter
#   - then decode general url-decoded caracters like spaces
# - grep title from url
# - trim newlines
# - replace unsafe characters (not allowed as filename or problematic for Obsidian links) with underscore
title=$(python3 -c 'import sys, urllib.parse as ul; print(ul.unquote_plus(ul.unquote_plus(sys.stdin.read())))' <<< "${pdfUrl}" | sed 's/\.pdf\?.*$//g' | sed 's|^.*https://kindle-content-requests.prod.s3.amazonaws.com/[-0-9a-z]*/||g' | tr -d '\n')
title=$(echo "${title}" | tr ':/\#^|[]' '_')

# Get name of files to create
noteFilename="${vaultPath}/${title}.md"
pdfFilename="${vaultPath}/${title}.pdf"

# Skip if note already exists
if [ -f "${noteFilename}" ]; then
  exit 0
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
    curl -sLf "${txtUrl}"
  } >> "${noteFilename}"
fi

# Download pdf file
curl -sLf "${pdfUrl}" -o "${pdfFilename}"

echo "${title}"

osascript -e "display notification \"${title} imported.\" with title \"PDF from Scribe to Obsidian\" subtitle \"${vaultName}\""
