#!/bin/bash

# https://stackoverflow.com/questions/59895/getting-the-source-directory-of-a-bash-script-from-within
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

set -e

[ -z "${OS}" ] && . lib/common.sh

[ "${OS}" = "linux" ] || exit 0

echo "Installing Atom One Dark color scheme..."
bash -c "$(curl -fsSL https://raw.githubusercontent.com/denysdovhan/gnome-terminal-one/master/one-dark.sh)"

echo "Switch to zsh as default shell..."
chsh -s $(which zsh)
