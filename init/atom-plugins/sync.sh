#!/bin/bash

[ -z "${OS}" ] && . ../../lib/common.sh

which -s apm || exit;

if [ -f "installed.list" ]; then
  while read -r plugin
  do
    apm install "$plugin"
  done < <(apm ls --packages --installed --bare | sed 's/@.*$//' | diff -u - installed.list | grep '^+[^+]' | sed 's/^+//')
fi

if [ -f "installed.list" ]; then
  while read -r plugin
  do
    apm deinstall "$plugin"
  done < <(apm ls --packages --installed --bare | sed 's/@.*$//' | diff -u - installed.list | grep '^-[^-]' | sed 's/^-//')
fi

if [ -f "disabled.list" ]; then
  while read -r plugin
  do
    apm disable "$plugin"
  done < <(apm ls --disabled --bare | sed 's/@.*$//' | diff -u - disabled.list | grep '^+[^+]' | sed 's/^+//')
fi

if [ -f "disabled.list" ]; then
  while read -r plugin
  do
    apm enable "$plugin"
  done < <(apm ls --disabled --bare | sed 's/@.*$//' | diff -u - disabled.list | grep '^-[^-]' | sed 's/^-//')
fi
