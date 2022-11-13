#!/bin/bash

# See also https://github.com/mathiasbynens/dotfiles/blob/master/.osx

[ -z "${OS}" ] && source lib/common.sh

[ "${OS}" = "macos" ] || exit 0

language="en"

echo "Skip if language is already set to ${language}"
(defaults read NSGlobalDomain AppleLanguages | grep -q "${language}") && exit 0

echo "Set language and text formats"
defaults write NSGlobalDomain AppleLanguages -array "${language}"
defaults write NSGlobalDomain AppleLocale -string "de_DE@currency=EUR"
defaults write NSGlobalDomain AppleMeasurementUnits -string "Centimeters"
defaults write NSGlobalDomain AppleMetricUnits -bool true

if [ "${NO_SUDO}" ]; then
  echo "Skipping commands that require sudo permissions."
else
  sudo languagesetup -langspec "${language}"

  echo "Set the timezone; see 'sudo systemsetup -listtimezones' for other values"
  sudo systemsetup -settimezone "Europe/Berlin" > /dev/null
fi

echo "Set keyboard layout to German"
defaults write com.apple.HIToolbox AppleEnabledInputSources -array '<dict><key>InputSourceKind</key><string>Keyboard Layout</string><key>KeyboardLayout ID</key><integer>3</integer><key>KeyboardLayout Name</key><string>German</string></dict>'
defaults write com.apple.HIToolbox AppleSelectedInputSources -array '<dict><key>InputSourceKind</key><string>Keyboard Layout</string><key>KeyboardLayout ID</key><integer>3</integer><key>KeyboardLayout Name</key><string>German</string></dict>'
