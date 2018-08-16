#!/bin/bash

[ -z "${OS}" ] && . ../../lib/common.sh

[ "${OS}" == "macos" ] || exit

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
