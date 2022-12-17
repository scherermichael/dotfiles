#!/bin/bash

# See also https://github.com/mathiasbynens/dotfiles/blob/master/.osx

[ -z "${OS}" ] && source lib/common.sh

[ "${OS}" = "macos" ] || exit 0

###############################################################################
# General UI/UX                                                               #
###############################################################################

if [ "${NO_SUDO}" ]; then
  echo "Skipping commands that require sudo permissions."
else
  ###############################################################################
  # Sleep settings                                                                      #
  ###############################################################################

  echo "Sleep after 30 minutes"
  sudo pmset -c sleep 70
  sudo pmset -b sleep 40
  sudo pmset -c displaysleep 60
  sudo pmset -b displaysleep 30
  sudo pmset -a halfdim 1
fi

echo "Save to disk (not to iCloud) by default"
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

echo "Automatically quit printer app once the print jobs complete"
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

echo Disable Resume system-wide
defaults write com.apple.systempreferences NSQuitAlwaysKeepsWindows -bool false

echo "Disable smart quotes as they are annoying when typing code"
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

echo "Disable smart dashes as they are annoying when typing code"
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

###############################################################################
# Trackpad, mouse, keyboard, Bluetooth accessories, and input                 #
###############################################################################

echo "Trackpad: enable drag after double tap"
defaults write com.apple.AppleMultitouchTrackpad Dragging -int 1
defaults write com.apple.AppleMultitouchTrackpad DragLock -int 1
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Dragging -int 1
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad DragLock -int 1

echo "Trackpad: enable tap to click for this user and for the login screen"
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

echo "Disable auto-correct"
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

echo "Enable keyboard control for dialogs (all elements)"
defaults write -g AppleKeyboardUIMode -int 2

###############################################################################
# Screen                                                                      #
###############################################################################

echo "Set default screensaver to 'Flurry'"
defaults -currentHost write com.apple.screensaver moduleDict -dict moduleName Flurry path /System/Library/Screen\ Savers/Flurry.saver type 0

###############################################################################
# Finder                                                                      #
###############################################################################

echo "Finder: show all filename extensions"
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

echo "Finder: show hidden files"
defaults write com.apple.finder AppleShowAllFiles -bool true

echo "Finder: show status bar"
defaults write com.apple.finder ShowStatusBar -bool true

echo "Finder: show path bar"
defaults write com.apple.finder ShowPathbar -bool true

echo "When performing a search, search the current folder by default"
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

echo "Disable the warning when changing a file extension"
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

echo "Enable spring loading for directories"
defaults write NSGlobalDomain com.apple.springing.enabled -bool true

echo "Avoid creating .DS_Store files on network volumes"
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

echo "Use list view in all Finder windows by default"
# Four-letter codes for the other view modes: `icnv`, `clmv`, `Flwv`
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

echo "Disable the warning before emptying the Trash"
defaults write com.apple.finder WarnOnEmptyTrash -bool false

###############################################################################
# Dock, Dashboard, and hot corners                                            #
###############################################################################

echo "Show open apps only"
defaults write com.apple.dock static-only -bool TRUE

echo "Do not automatically rearrange Spaces based on most recent use"
defaults write com.apple.dock mru-spaces -bool false

echo "Automatically hide and show the Dock"
defaults write com.apple.dock autohide -bool true

echo "Switch space to show application on single click"
defaults write com.apple.dock workspaces-auto-swoosh -boolean Yes

echo "Reload Dock"
killall -HUP Dock

###############################################################################
# Terminal                                                                    #
###############################################################################

echo "Only use UTF-8 in Terminal.app"
defaults write com.apple.terminal StringEncodings -array 4

###############################################################################
# Activity Monitor                                                            #
###############################################################################

echo "Show the main window when launching Activity Monitor"
defaults write com.apple.ActivityMonitor OpenMainWindow -bool true

echo "Visualize CPU usage in the Activity Monitor Dock icon"
defaults write com.apple.ActivityMonitor IconType -int 5

echo "Show all processes in Activity Monitor"
defaults write com.apple.ActivityMonitor ShowCategory -int 0

echo "Sort Activity Monitor results by CPU usage"
defaults write com.apple.ActivityMonitor SortColumn -string "CPUUsage"
defaults write com.apple.ActivityMonitor SortDirection -int 0

###############################################################################
# TextEdit                                                                    #
###############################################################################

echo "Use plain text mode for new TextEdit documents"
defaults write com.apple.TextEdit RichText -int 0

echo "Open and save files as UTF-8 in TextEdit"
defaults write com.apple.TextEdit PlainTextEncoding -int 4
defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4

###############################################################################
# Safari                                                                    #
###############################################################################

echo "Safari: Disable opening safe files after download"
defaults write com.apple.Safari AutoOpenSafeDownloads 0

###############################################################################
# Dictionary                                                                  #
###############################################################################

echo "Dictionary: Disable shortcut <cmd>+<ctl>+d"
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 70 '<dict><key>enabled</key><false/></dict>'
