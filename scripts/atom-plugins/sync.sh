#!/bin/bash

[ -z "${OS}" ] && . ../../lib/common.sh

command -v apm || exit;

if [ -f "installed.list" ]; then
  while read -r plugin
  do
    apm install "$plugin"
  done < <(apm ls --packages --installed --bare | sed 's/@.*$//' | sed '/^$/d' | diff -u - installed.list | grep '^+[^+]' | sed 's/^+//')

  while read -r plugin
  do
    apm deinstall "$plugin"
  done < <(apm ls --packages --installed --bare | sed 's/@.*$//' | sed '/^$/d' | diff -u - installed.list | grep '^-[^-]' | sed 's/^-//')
fi

if [ -f "disabled.list" ]; then
  while read -r plugin
  do
    apm disable "$plugin"
  done < <(apm ls --disabled --bare | sed 's/@.*$//' | sed '/^$/d' | diff -u - disabled.list | grep '^+[^+]' | sed 's/^+//')

  while read -r plugin
  do
    apm enable "$plugin"
  done < <(apm ls --disabled --bare | sed 's/@.*$//' | sed '/^$/d' | diff -u - disabled.list | grep '^-[^-]' | sed 's/^-//')
fi
