#!/bin/bash

# Note: Use `brew cask list -1 > packages.list` to create an appropriate list of packages.

if [ -z "$OS" ]; then
  . ../../lib/common.sh
fi;

if [ "$OS" != "macos" ]; then exit; fi

# Get Homebrew Cask
brew tap caskroom/cask

# Install any package given in `packages.list` (one per line). See: http://stackoverflow.com/questions/10929453/bash-scripting-read-file-line-by-line
if [ -f "packages.list" ]; then
  while read -r package
  do
    echo "Installing $package"
    brew cask install "$package"
  done < "packages.list"
fi
