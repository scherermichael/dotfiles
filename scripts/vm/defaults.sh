#!/bin/bash

# See also https://github.com/mathiasbynens/dotfiles/blob/master/.osx

[ -z "${OS}" ] && . lib/common.sh

[ "${OS}" == "macos" ] || exit 0

[ "${IS_VM}" = "true" ] || exit 0

echo "Disable transparency in the menu bar and elsewhere on Yosemite"
defaults write com.apple.universalaccess reduceTransparency -bool true

echo "Increase window resize speed for Cocoa applications"
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001

echo "Disable local Time Machine snapshots"
sudo tmutil disablelocal

echo "Set standby delay to 24 hours (default is 1 hour)"
sudo pmset -a standbydelay 86400

echo "Disable hibernation (speeds up entering sleep mode)"
sudo pmset -a hibernatemode 0

echo "Remove the sleep image file to save disk space"
sudo rm -f /private/var/vm/sleepimage
# Create a zero-byte file instead…
sudo touch /private/var/vm/sleepimage
# …and make sure it can’t be rewritten
sudo chflags uchg /private/var/vm/sleepimage

echo "Do not sleep"
sudo systemsetup -setsleep Never

echo "Never go into computer sleep mode"
sudo systemsetup -setcomputersleep Off > /dev/null

echo "Do not require password after sleep or screen saver"
defaults write com.apple.screensaver askForPassword -int 0

echo "Never show screen saver"
defaults -currentHost write com.apple.screensaver idleTime 0

echo "Enable HiDPI display modes (requires restart)"
sudo defaults write /Library/Preferences/com.apple.windowserver DisplayResolutionEnabled -bool true

echo "Finder: disable window animations and Get Info animations"
defaults write com.apple.finder DisableAllAnimations -bool true

echo "Locate Dock on the left side"
defaults write com.apple.dock orientation left

echo "Set the icon size of Dock items to 36 pixels"
defaults write com.apple.dock tilesize -int 36

echo "Don’t animate opening applications from the Dock"
defaults write com.apple.dock launchanim -bool false

echo "Speed up Mission Control animations"
defaults write com.apple.dock expose-animation-duration -float 0.1

echo "Start hiding immediately"
defaults write com.apple.Dock autohide-delay -int 0

echo "Remove the animation when hiding/showing the Dock"
defaults write com.apple.dock autohide-time-modifier -float 0

# Hot corners
# Possible values:
#  0: no-op
#  2: Mission Control
#  3: Show application windows
#  4: Desktop
#  5: Start screen saver
#  6: Disable screen saver
#  7: Dashboard
# 10: Put display to sleep
# 11: Launchpad
# 12: Notification Center
echo "Top left screen corner → Start screen saver"
defaults write com.apple.dock wvous-tl-corner -int 5
defaults write com.apple.dock wvous-tl-modifier -int 0
echo "Bottom left screen corner → Show application window"
defaults write com.apple.dock wvous-bl-corner -int 3
defaults write com.apple.dock wvous-bl-modifier -int 0
echo "Bottom right screen corner → Mission Control"
defaults write com.apple.dock wvous-br-corner -int 2
defaults write com.apple.dock wvous-tr-modifier -int 0
