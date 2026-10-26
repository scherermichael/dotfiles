#!/bin/bash

set -e

# https://stackoverflow.com/questions/59895/getting-the-source-directory-of-a-bash-script-from-within
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

[ -z "${OS}" ] && source lib/common.sh

[ "${OS}" = "macos" ] || exit 0

label="stechuhr.session"
plist="${HOME}/Library/LaunchAgents/${label}.plist"

# The agent script has no .sh suffix, so restore.sh does not run it.
# 'install' replaces the files instead of overwriting them, so a running agent is not affected.
echo "Installing stechuhr session agent..."
install -d "${HOME}/Library/LaunchAgents"
install -m 755 "${DIR}/stechuhr-session" "${HOME}/.stechuhr-session"
install -m 644 "${DIR}/${label}.plist" "${plist}"

# A loaded agent picks up changes on next login
if launchctl print "gui/$(id -u)/${label}" > /dev/null 2>&1; then
  echo "Agent is already loaded."
else
  launchctl bootstrap "gui/$(id -u)" "${plist}" || echo "Could not load agent, it will start on next login."
fi
