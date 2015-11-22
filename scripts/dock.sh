#!/bin/bash

if [ -z "$OS" ]; then
  . ../lib/common.sh
fi;

if [ "$OS" != "osx" ]; then exit; fi

if [ "$ISHOST" = true ]; then exit; fi

defaults write ~/Library/Preferences/com.apple.dock autohide 1
defaults write ~/Library/Preferences/com.apple.dock orientation left
defaults write ~/Library/Preferences/com.apple.dock tilesize 36

# Remove docked apps
defaults delete ~/Library/Preferences/com.apple.dock persistent-apps

killall -HUP Dock
