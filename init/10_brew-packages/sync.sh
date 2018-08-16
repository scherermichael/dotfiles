#!/bin/bash

[ -z "${OS}" ] && . ../../lib/common.sh

[ "${OS}" == "macos" ] || exit

# Install new packages
if [ -f "packages.list" ]; then
  while read -r package
  do
    echo "Installing $package..."
    brew install "$package"
done < <(brew leaves -1 | diff -u - packages.list | grep '^+[^+]' | sed 's/^+//')
fi

# Deinstall no longer listed packages
if [ -f "packages.list" ]; then
  while read -r package
  do
    echo "Uninstalling $package..."
    brew uninstall --force "$package"
done < <(brew leaves -1 | diff -u - packages.list | grep '^-[^-]' | sed 's/^-//')
fi

echo "Upgrading all packages..."
brew upgrade
