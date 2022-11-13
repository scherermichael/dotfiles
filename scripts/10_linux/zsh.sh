#!/bin/bash

set -e

# https://stackoverflow.com/questions/59895/getting-the-source-directory-of-a-bash-script-from-within
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

[ -z "${OS}" ] && source lib/common.sh

[ "${OS}" = "linux" ] || exit 0

echo "Using zsh as login shell..."
if [ ! -e /bin/zsh ]; then
  echo "Skip. Zsh not found."
  exit 0
fi

sudo usermod --shell /bin/zsh $USER
