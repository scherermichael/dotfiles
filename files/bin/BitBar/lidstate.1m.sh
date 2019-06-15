#!/usr/bin/env bash

# BitBar lid state plugin

isClosed=$(ioreg -r -k AppleClamshellState -d 4 | \
  grep AppleClamshellState | \
  head -1)
result="💻"

if [[ "${isClosed}" =~ "Yes" ]]; then
  # Set screensaver to remote-friendly more static variant
  defaults -currentHost write com.apple.screensaver moduleDict -dict moduleName Computer\ Name path /System/Library/Frameworks/ScreenSaver.framework/Resources/Computer\ Name.saver type 0
  result="💻✓|color=green"
else
  # Set screensaver to default
  defaults -currentHost write com.apple.screensaver moduleDict -dict moduleName Flurry path /System/Library/Screen\ Savers/Flurry.saver type 0
  if netstat -an | grep '\.5900 ' | grep -q ESTABLISHED; then
    result="✘💻✘|color=red"
  fi
fi

echo "${result}"
echo "---"
echo "Refresh | refresh=true"
