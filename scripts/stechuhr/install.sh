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

# The Keychain asks for the password once per read of the private key, but twice if the binary, identified
# by its content, is not in the partition list of the key. Go builds are reproducible, so only a changed build
# (new code or a new Go version) is installed, after it replaced the installed one in the partition list.
# Without a private key, keygen below adds it with the installed binary in the partition list.
echo "Building stechuhr-crypt..."
command -v go > /dev/null || { echo "Go is missing, cannot build stechuhr-crypt."; exit 1; }
build="$(mktemp -d)"
(cd "${DIR}/crypt" && go build -trimpath -buildvcs=false -o "${build}/stechuhr-crypt" .)
if ! cmp -s "${build}/stechuhr-crypt" "${HOME}/.stechuhr-crypt"; then
  allowed=1
  if security find-generic-password -s stechuhr -a private-key > /dev/null 2>&1; then
    echo "Allowing the new stechuhr-crypt to read the private key in the Keychain..."
    cdhash="$(codesign -dvvv "${build}/stechuhr-crypt" 2>&1 | sed -n 's/^CDHash=//p')"
    security set-generic-password-partition-list -s stechuhr -a private-key -S "cdhash:${cdhash}" > /dev/null || allowed=""
  fi
  if [ "${allowed}" ]; then
    install -m 755 "${build}/stechuhr-crypt" "${HOME}/.stechuhr-crypt"
  else
    echo "Could not update the Keychain, keeping the installed stechuhr-crypt."
  fi
fi
rm -rf "${build}"
# Create the key pair on first install, or restore the public key from the Keychain.
# To restore backups instead, copy the public key there first and run '~/.stechuhr-crypt import' afterwards.
[ -s "${HOME}/.stechuhr-public-key" ] || "${HOME}/.stechuhr-crypt" keygen
# Encrypt plain text lines: logs from before the encryption and events kept in plain text when encryption failed
shopt -s nullglob
"${HOME}/.stechuhr-crypt" seal "${HOME}"/.stechuhr-*.log

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
