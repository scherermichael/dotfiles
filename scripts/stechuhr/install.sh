#!/bin/bash

set -e

# https://stackoverflow.com/questions/59895/getting-the-source-directory-of-a-bash-script-from-within
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

[ -z "${OS}" ] && source lib/common.sh

[ "${OS}" = "macos" ] || exit 0

agents="${HOME}/Library/LaunchAgents"
plist="${agents}/stechuhr.session.plist"

# The scripts have no .sh suffix, so restore.sh does not run them.
# 'install' replaces the files instead of overwriting them, so running scripts are not affected.
echo "Installing stechuhr..."
install -d "${agents}"
install -m 755 "${DIR}/stechuhr-event" "${HOME}/.stechuhr-event"
install -m 755 "${DIR}/stechuhr-powerlog" "${HOME}/.stechuhr-powerlog"
install -m 755 "${DIR}/stechuhr-session" "${HOME}/.stechuhr-session"
install -m 755 "${DIR}/stechuhr-worklog" "${HOME}/.stechuhr-worklog"
install -m 755 "${DIR}/sleepwatcher-sleep" "${HOME}/.sleep"
install -m 755 "${DIR}/sleepwatcher-wakeup" "${HOME}/.wakeup"
install -m 644 "${DIR}/stechuhr.session.plist" "${plist}"

# Reloading would log a shutdown and a login, so changes take effect on next login
if launchctl print "gui/$(id -u)/stechuhr.session" > /dev/null 2>&1; then
  echo "Agent stechuhr.session is already loaded."
else
  launchctl bootstrap "gui/$(id -u)" "${plist}" || echo "Could not load agent stechuhr.session, it will start on next login."
fi

# Homebrew's service runs ~/.sleep and ~/.wakeup
if [ -e "/opt/homebrew/opt/sleepwatcher/sbin/sleepwatcher" ]; then
  brew services restart sleepwatcher
fi
