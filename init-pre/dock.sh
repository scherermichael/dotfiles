#!/bin/bash

if [ -z "$OS" ]; then
  . ../lib/common.sh
fi;

if [ "$OS" != "osx" ]; then exit; fi

if [ "$ISHOST" = true ]; then exit; fi

defaults write com.apple.dock orientation left
defaults write com.apple.dock autohide -bool true
defaults write com.apple.Dock autohide-delay -int 0
defaults write com.apple.dock autohide-time-modifier -float 0.2
defaults write com.apple.dock tilesize -int 36

# Remove docked apps
defaults delete com.apple.dock persistent-apps

killall -HUP Dock
