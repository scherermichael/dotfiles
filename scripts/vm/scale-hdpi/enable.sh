#!/bin/bash

# https://stackoverflow.com/questions/59895/getting-the-source-directory-of-a-bash-script-from-within
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

[ -z "${OS}" ] && source lib/common.sh

[ "${OS}" = "macos" ] || exit 0

[ "${IS_VM}" ] || exit 0

[ "${NO_SUDO}" ] && exit 0

# Copy app
cp -rf "${DIR}/scale-hdpi.app" ~/Desktop

# Allow execution
sudo "${DIR}/tccutil.py" --insert com.apple.ScriptEditor.id.scale-hdpi
sudo "${DIR}/tccutil.py" --enable com.apple.ScriptEditor.id.scale-hdpi
