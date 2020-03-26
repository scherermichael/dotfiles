#!/bin/bash

# https://stackoverflow.com/questions/59895/getting-the-source-directory-of-a-bash-script-from-within
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

[ -z "${OS}" ] && . lib/common.sh

command -v code || exit 0

if [ -f "installed.list" ]; then
  while read -r plugin
  do
    code --install-extension "$plugin" --force
  done < <(code --list-extensions | diff -u - "${DIR}/installed.list" | grep '^+[^+]' | sed 's/^+//')

  while read -r plugin
  do
    code --uninstall-extension "$plugin" --force
  done < <(code --list-extensions | diff -u - "${DIR}/installed.list" | grep '^-[^-]' | sed 's/^-//')
fi
