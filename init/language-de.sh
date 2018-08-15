#!/bin/bash

# See also https://github.com/mathiasbynens/dotfiles/blob/master/.osx

if [ -z "$OS" ]; then
  . ../lib/common.sh
fi;

if [ "$OS" != "macos" ]; then exit; fi

# Set language and text formats
sudo languagesetup -langspec de
defaults write NSGlobalDomain AppleLanguages -array "de"
defaults write NSGlobalDomain AppleLocale -string "de_DE@currency=EUR"
defaults write NSGlobalDomain AppleMeasurementUnits -string "Centimeters"
defaults write NSGlobalDomain AppleMetricUnits -bool true

# Set the timezone; see `sudo systemsetup -listtimezones` for other values
sudo systemsetup -settimezone "Europe/Berlin" > /dev/null

# Set keyboard layout to German
defaults write com.apple.HIToolbox AppleEnabledInputSources -array '<dict><key>InputSourceKind</key><string>Keyboard Layout</string><key>KeyboardLayout ID</key><integer>3</integer><key>KeyboardLayout Name</key><string>German</string></dict>'
defaults write com.apple.HIToolbox AppleSelectedInputSources -array '<dict><key>InputSourceKind</key><string>Keyboard Layout</string><key>KeyboardLayout ID</key><integer>3</integer><key>KeyboardLayout Name</key><string>German</string></dict>'
