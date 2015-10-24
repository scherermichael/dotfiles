#!/bin/bash

# Note: Use `brew cask list -1 > packages.list` to create an appropriate list of packages.

if [ "$OS" != "osx" ]; then exit; fi

# Install Brew cask itself
brew install brew-cask

# Install any package given in `packages.list` (one per line). See: http://stackoverflow.com/questions/10929453/bash-scripting-read-file-line-by-line
while read -r package
do
  echo "Installing $package"
  brew cask install "$package"
done < "packages.list"

# If we are not in a VM: Install host-only software.
if [ $ISHOST = true ]; then
  while read -r package
  do
    echo "Installing $package"
    brew cask install "$package"
  done < "packages.host.list"
fi
