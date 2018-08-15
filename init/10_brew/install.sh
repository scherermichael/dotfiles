#!/bin/bash

# Note: Use `brew list -1 > packages.list` to create an appropriate list of packages.

if [ -z "$OS" ]; then
  . ../../lib/common.sh
fi;

if [ "$OS" != "macos" ]; then exit; fi

# Install Brew itself
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" </dev/null

# Install any package given in `packagees.list` (one per line). See: http://stackoverflow.com/questions/10929453/bash-scripting-read-file-line-by-line
if [ -f "packages.list" ]; then
  while read -r package
  do
    echo "Installing $package"
    brew install "$package"
  done < "packages.list"
fi
