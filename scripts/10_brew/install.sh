#!/bin/bash

# Note: Use `brew list -1 > packages.list` to create an appropriate list of packages.

if [ "$OS" != "osx" ]; then exit; fi

# Install Brew itself
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install any package given in `packagees.list` (one per line). See: http://stackoverflow.com/questions/10929453/bash-scripting-read-file-line-by-line
while read -r package
do
  echo "Installing $package"
  brew install "$package"
done < "packages.list"

# If we are not in a VM: Install host-only software.
if [ "$FULL" = true ]; then
  while read -r package
  do
    echo "Installing $package"
    brew install "$package"
  done < "packages.host.list"
fi
