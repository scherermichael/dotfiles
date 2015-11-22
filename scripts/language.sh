#!/bin/bash

# See also https://github.com/mathiasbynens/dotfiles/blob/master/.osx

if [ -z "$OS" ]; then
  . ../lib/common.sh
fi;

if [ "$OS" != "osx" ]; then exit; fi

# Set language and text formats
# Note: if you’re in the US, replace `EUR` with `USD`, `Centimeters` with
# `Inches`, `en_GB` with `en_US`, and `true` with `false`.
#defaults write NSGlobalDomain AppleLanguages -array "de"
#defaults write NSGlobalDomain AppleLocale -string "de_DE@currency=EUR"
#defaults write NSGlobalDomain AppleMeasurementUnits -string "Centimeters"
#defaults write NSGlobalDomain AppleMetricUnits -bool true

sudo languagesetup -langspec de

# Set the timezone; see `sudo systemsetup -listtimezones` for other values
sudo systemsetup -settimezone "Europe/Berlin" > /dev/null

# Set keyboard layout to German
defaults write com.apple.HIToolbox AppleEnabledInputSources -array '<dict><key>InputSourceKind</key><string>Keyboard Layout</string><key>KeyboardLayout ID</key><integer>3</integer><key>KeyboardLayout Name</key><string>German</string></dict>'
defaults write com.apple.HIToolbox AppleSelectedInputSources -array '<dict><key>InputSourceKind</key><string>Keyboard Layout</string><key>KeyboardLayout ID</key><integer>3</integer><key>KeyboardLayout Name</key><string>German</string></dict>'
