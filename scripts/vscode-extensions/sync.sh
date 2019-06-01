#!/bin/bash

[ -z "${OS}" ] && . ../../lib/common.sh

command -v code || exit;

if [ -f "installed.list" ]; then
  while read -r plugin
  do
    code --install-extension "$plugin" --force
  done < <(code --list-extensions | diff -u - installed.list | grep '^+[^+]' | sed 's/^+//')

  while read -r plugin
  do
    code --uninstall-extension "$plugin" --force
  done < <(code --list-extensions | diff -u - installed.list | grep '^-[^-]' | sed 's/^-//')
fi
