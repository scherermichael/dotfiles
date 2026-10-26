#!/bin/bash

set -e

# https://stackoverflow.com/questions/59895/getting-the-source-directory-of-a-bash-script-from-within
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

[ -z "${OS}" ] && source lib/common.sh

[ "${OS}" = "macos" ] || exit 0

agents="${HOME}/Library/LaunchAgents"

load_agent() {
  launchctl bootstrap "gui/$(id -u)" "${agents}/$1.plist" || echo "Could not load agent $1, it will start on next login."
}

# The scripts have no .sh suffix, so restore.sh does not run them.
# 'install' replaces the files instead of overwriting them, so running agents are not affected.
echo "Installing stechuhr agents..."
install -d "${agents}"
install -m 755 "${DIR}/stechuhr-event" "${HOME}/.stechuhr-event"
install -m 755 "${DIR}/stechuhr-session" "${HOME}/.stechuhr-session"
install -m 644 "${DIR}/stechuhr.session.plist" "${agents}/stechuhr.session.plist"

# Reloading would log a shutdown and a login, so changes take effect on next login
if launchctl print "gui/$(id -u)/stechuhr.session" > /dev/null 2>&1; then
  echo "Agent stechuhr.session is already loaded."
else
  load_agent stechuhr.session
fi

if [ -e "/opt/homebrew/opt/sleepwatcher/sbin/sleepwatcher" ]; then
  # Homebrew's service cannot log display events, it would log sleep and wake-up twice
  if [ -f "${agents}/homebrew.mxcl.sleepwatcher.plist" ]; then
    brew services stop sleepwatcher
  fi
  install -m 644 "${DIR}/stechuhr.sleepwatcher.plist" "${agents}/stechuhr.sleepwatcher.plist"
  # sleepwatcher logs nothing on start and stop, so always reload it to apply changes
  launchctl bootout "gui/$(id -u)/stechuhr.sleepwatcher" 2> /dev/null || true
  load_agent stechuhr.sleepwatcher
fi
