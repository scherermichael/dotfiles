#!/bin/bash

# See also https://discussions.apple.com/thread/1560727?start=0&tstart=0

[ -z "${OS}" ] && . ../../../lib/common.sh

[ "${OS}" == "macos" ] || exit

[ "$(whoami)" == "vagrant" ] || exit

sudo defaults write /Library/Preferences/com.apple.loginwindow autoLoginUser -string vagrant
sudo cp kcpassword /private/etc/
