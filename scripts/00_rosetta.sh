#!/bin/bash

set -e

# https://stackoverflow.com/questions/59895/getting-the-source-directory-of-a-bash-script-from-within
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

[ -z "${OS}" ] && source lib/common.sh

[ "${OS}" = "macos" ] || exit 0

if [ "$(uname -p)" = "arm" ]; then
  echo "Installing Rosetta 2..."
  softwareupdate --install-rosetta --agree-to-license
fi
