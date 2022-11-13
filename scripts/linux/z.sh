#!/bin/bash

set -e

# https://stackoverflow.com/questions/59895/getting-the-source-directory-of-a-bash-script-from-within
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

[ -z "${OS}" ] && source lib/common.sh

[ "${OS}" = "linux" ] || exit 0

# Download to latest to home dir
wget https://raw.githubusercontent.com/rupa/z/master/z.sh -O ~/z.sh
# Add to .bashrc
echo source /path/to/z.sh >> ~/.bashrc
# Add to .zshrc
echo source /path/to/z.sh >> ~/.zshrc
