#!/bin/bash

set -e

# https://stackoverflow.com/questions/59895/getting-the-source-directory-of-a-bash-script-from-within
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

[ -z "${OS}" ] && . lib/common.sh

[ "${OS}" = "macos" ] || exit 0

# App Store packages

# Install new packages
if [ -f "${DIR}/packages.list" ]; then
  while read -r package
  do
    id=$(echo "${package}" | cut -d ' ' -f1)
    name=$(echo "${package}" | cut -d ' ' -f2)
    # Skip lines with comments
    [[ "${id}" =~ ^# ]] && continue
    echo "Installing package ${name} (${id})..."
    if ! mas install "${id}"; then
      echo "ERROR: Installation of package failed!"
      exit 2
    fi
  done < "${DIR}/packages.list"
fi
