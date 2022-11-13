#!/bin/bash

set -e

# https://stackoverflow.com/questions/59895/getting-the-source-directory-of-a-bash-script-from-within
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

[ -z "${OS}" ] && source lib/common.sh

[ "${OS}" = "linux" ] || exit 0

if [ "$(uname -p)" = "aarch64" ]; then
  echo "Skip. Homebrew is not supported on ARM."
  exit 0
fi

# Init

if command -v brew; then
  echo "Updating Brew..."
  pushd "$(brew --repository)" && git fetch && git reset --hard origin/master && (popd || exit 1)
else
  echo "Installing Brew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

  # Add brew to PATH for the following steps
  test -d ~/.linuxbrew && eval "$(~/.linuxbrew/bin/brew shellenv)"
  test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

# Homebrew packages

# Install new packages
if [ -f "${DIR}/packages.list" ]; then
  while read -r package
  do
    echo "Installing package $package..."
    brew install "$package"
done < <(brew leaves | diff -u - "${DIR}/packages.list" | grep '^+[^+]' | sed 's/^+//')
fi

# Deinstall no longer listed packages
if [ -f "${DIR}/packages.list" ]; then
  while read -r package
  do
    echo "Uninstalling package $package..."
    brew uninstall --force "$package"
done < <(brew leaves | diff -u - "${DIR}/packages.list" | grep '^-[^-]' | sed 's/^-//')
fi

echo "Upgrading packages..."
brew upgrade
