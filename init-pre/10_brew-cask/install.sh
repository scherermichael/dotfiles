#!/bin/bash

# Note: Use `brew cask list -1 > packages.list` to create an appropriate list of packages.

if [ -z "$OS" ]; then
  . $(dirname "$0")/../../lib/common.sh
fi;

if [ "$OS" != "osx" ]; then exit; fi

# Install Brew cask itself
brew install brew-cask

# Install any package given in `packages.list` (one per line). See: http://stackoverflow.com/questions/10929453/bash-scripting-read-file-line-by-line
if [ -f "packages.list" ]; then
  while read -r package
  do
    echo "Installing $package"
    brew cask install "$package"
  done < "packages.list"
fi

# Install ALL software packages if 'init.sh --full' is called.
if [ "$FULL" = true -a -f "packages.full.list" ]; then
  while read -r package
  do
    echo "Installing $package"
    brew cask install "$package"
  done < "packages.full.list"
fi
