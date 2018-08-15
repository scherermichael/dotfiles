#!/bin/bash

# See also https://discussions.apple.com/thread/1560727?start=0&tstart=0

if [ -z "$OS" ]; then
  . ../../lib/common.sh
fi;

if [ "$OS" != "macos" ]; then exit; fi

if [ "$(whoami)" != "vagrant" ]; then exit; fi

sudo defaults write /Library/Preferences/com.apple.loginwindow autoLoginUser -string vagrant
sudo cp kcpassword /private/etc/
