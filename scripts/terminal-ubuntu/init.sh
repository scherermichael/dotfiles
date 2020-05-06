#!/bin/bash

set -e

[ -z "${OS}" ] && . lib/common.sh

[ "${OS}" = "linux" ] || exit 0

echo "Installing Atom One Dark color scheme..."
bash -c "$(curl -fsSL https://raw.githubusercontent.com/denysdovhan/gnome-terminal-one/master/one-dark.sh)"

echo "Switch to zsh as default shell..."
sudo usermod -s "$(which zsh)" "${USER}"
