#!/bin/bash

# https://stackoverflow.com/questions/59895/getting-the-source-directory-of-a-bash-script-from-within
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

set -e
# See also https://github.com/mathiasbynens/dotfiles/blob/master/.osx

[ -z "${OS}" ] && . lib/common.sh

[ "${OS}" = "macos" ] || exit 0

DEFAULT_PROFILE="One Dark"

for file in "${DIR}"/*.terminal; do
  profile=$(sed "/<key>name<\/key>/,/<\/string>/!d" "${file}" | grep "<string>" | sed -E "s|^.*<string>(.*)</string>.*$|\1|")

  echo "Importing ${profile}..."
  defaults write com.apple.Terminal "Window Settings" -dict-add "${profile}" "$(sed -e "/<dict>/,/<\/dict>/!d" "${file}" | tr -d '\n')"
done

if [ -n "${DEFAULT_PROFILE}" ]; then
  echo "Setting ${DEFAULT_PROFILE} as default profile..."
  defaults write com.apple.terminal "Default Window Settings" -string "${DEFAULT_PROFILE}"
  defaults write com.apple.terminal "Startup Window Settings" -string "${DEFAULT_PROFILE}"
fi
