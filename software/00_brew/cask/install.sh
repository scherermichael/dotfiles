#!/bin/bash

. ../../../lib/common.sh

if [ "$OS" != "osx" ]; then
  echo "No valid installation target found."
  exit 0
fi

# Install Brew cask itself
brew install brew-cask

# Install any package given in `packages.list` (one per line). See: http://stackoverflow.com/questions/10929453/bash-scripting-read-file-line-by-line
while read -r package
do
  echo "------ Installing $package"
  brew cask install "$package"
done < "packages.list"
