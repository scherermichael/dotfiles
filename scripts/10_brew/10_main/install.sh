#!/bin/bash

echo "OS=$OS"
exit

# Install Brew itself
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install any package given in `packagees.list` (one per line). See: http://stackoverflow.com/questions/10929453/bash-scripting-read-file-line-by-line
while read -r package
do
  echo "Installing $package"
  brew install "$package"
done < "packages.list"
