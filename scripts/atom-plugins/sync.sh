#!/bin/bash

set -e

# https://stackoverflow.com/questions/59895/getting-the-source-directory-of-a-bash-script-from-within
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

[ -z "${OS}" ] && source lib/common.sh

if ! command -v apm; then
  echo "Skip synching Atom plugins. APM not found."
  exit 0
fi

if [ -f "${DIR}/installed.list" ]; then
  while read -r plugin
  do
    apm install "$plugin"
  done < <(apm ls --packages --installed --bare | sed 's/@.*$//' | sed '/^$/d' | diff -u - "${DIR}/installed.list" | grep '^+[^+]' | sed 's/^+//')

  while read -r plugin
  do
    apm deinstall "$plugin"
  done < <(apm ls --packages --installed --bare | sed 's/@.*$//' | sed '/^$/d' | diff -u - "${DIR}/installed.list" | grep '^-[^-]' | sed 's/^-//')
fi

if [ -f "${DIR}/disabled.list" ]; then
  while read -r plugin
  do
    apm disable "$plugin"
  done < <(apm ls --disabled --bare | sed 's/@.*$//' | sed '/^$/d' | diff -u - "${DIR}/disabled.list" | grep '^+[^+]' | sed 's/^+//')

  while read -r plugin
  do
    apm enable "$plugin"
  done < <(apm ls --disabled --bare | sed 's/@.*$//' | sed '/^$/d' | diff -u - "${DIR}/disabled.list" | grep '^-[^-]' | sed 's/^-//')
fi
