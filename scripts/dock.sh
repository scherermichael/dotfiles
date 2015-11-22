#!/bin/bash

if [ -z "$OS" ]; then
  . ../lib/common.sh
fi;

if [ "$OS" != "osx" ]; then exit; fi

if [ "$ISHOST" = true ]; then exit; fi

defaults write com.apple.dock orientation left
defaults write com.apple.dock autohide 1
defaults write com.apple.Dock autohide-delay -float 0
defaults write com.apple.dock tilesize 36

# Remove docked apps
defaults delete com.apple.dock persistent-apps

killall -HUP Dock
