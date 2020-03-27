#!/bin/bash

# https://stackoverflow.com/questions/59895/getting-the-source-directory-of-a-bash-script-from-within
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

# See also https://discussions.apple.com/thread/1560727?start=0&tstart=0

[ -z "${OS}" ] && . lib/common.sh

[ "${OS}" = "macos" ] || exit 0

[ "$(whoami)" = "vagrant" ] || exit 0

sudo defaults write /Library/Preferences/com.apple.loginwindow autoLoginUser -string vagrant
sudo cp "${DIR}/kcpassword" /private/etc/
