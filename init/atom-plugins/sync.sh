#!/bin/bash

[ -z "${OS}" ] && . ../../lib/common.sh

which -s apm || exit;

if [ -f "installed.list" ]; then
  while read -r plugin
  do
    echo "Installing $plugin"
    apm install "$plugin"
  done < <(apm ls --packages --installed --bare | sed 's/@.*$//' | diff -u - installed.list | grep '^+[^+]' | sed 's/^+//')
fi

if [ -f "installed.list" ]; then
  while read -r plugin
  do
    echo "Deinstalling $plugin"
    apm deinstall "$plugin"
  done < <(apm ls --packages --installed --bare | sed 's/@.*$//' | diff -u - installed.list | grep '^-[^-]' | sed 's/^-//')
fi

if [ -f "disabled.list" ]; then
  while read -r plugin
  do
    echo "Disabling $plugin"
    apm disable "$plugin"
  done < <(apm ls --disabled --bare | sed 's/@.*$//' | diff -u - disabled.list | grep '^+[^+]' | sed 's/^+//')
fi

if [ -f "disabled.list" ]; then
  while read -r plugin
  do
    echo "Enabling $plugin"
    apm enable "$plugin"
  done < <(apm ls --disabled --bare | sed 's/@.*$//' | diff -u - disabled.list | grep '^-[^-]' | sed 's/^-//')
fi
