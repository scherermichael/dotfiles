#!/bin/bash

set -e

# https://stackoverflow.com/questions/59895/getting-the-source-directory-of-a-bash-script-from-within
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

# restore.sh exports ${OS} and record_failure, so this only takes effect when
# the script is started on its own. The path is absolute so that it does not
# depend on the caller's working directory.
if [ -z "${OS}" ] || ! declare -F record_failure > /dev/null; then
  # shellcheck source=../../lib/common.sh
  source "${DIR}/../../lib/common.sh"
fi

[ "${OS}" = "macos" ] || exit 0

# Note the failure, but keep going: the remaining packages, the cask section and
# the cleanup steps are independent of any single package. The exit status at
# the end of the script reports that something went wrong.
had_failure=""
fail() {
  echo "ERROR: $1"
  record_failure "$1"
  had_failure="true"
}

# Arm binaries are stored under /opt/homebrew/bin while x86 binaries are stored under /usr/local/bin.
# On x86, create symlink /opt/homebrew/bin pointing to /usr/local/bin to allow to use path /opt/homebrew/bin all the time.
if [ ! -e /opt/homebrew ] && [ "$(uname -p)" = "i386" ]; then
  echo "Creating symlink for binary folder..."
  sudo mkdir -p /opt/homebrew
  sudo ln -s /usr/local/bin /opt/homebrew/bin
fi

# Init

if command -v brew; then
  echo "Updating Brew..."
  # Intentionally running it twice
  brew update
  brew update
else
  echo "Installing Brew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# if [ ! "${NO_SUDO}" ]; then
#   if ls -l /usr/local/ | tail -n +2 | grep -qv " admin "; then
#     # Not all folders in /usr/local belong to the "admin" group
#     echo "Updating permissions for /usr/local..."
#     # https://gist.github.com/jaibeee/9a4ea6aa9d428bc77925
#     # allow admins to manage homebrew's local install directory
#     sudo chgrp -R admin /usr/local/*
#     sudo chmod -R g+w /usr/local/*
#   fi
# fi

# Homebrew taps

# Add missing taps. Taps are never removed automatically: untap manually and
# re-run snapshot.sh to drop a tap from the list. A tap that no longer exists
# (deprecated, renamed, private) only warns, so a stale entry in the list does
# not block the rest of the restore.
if [ -f "${DIR}/taps.list" ]; then
  taps_to_add=$(brew tap | diff -u - "${DIR}/taps.list" | grep '^+[^+]' | sed 's/^+//')
  for tap in ${taps_to_add}; do
    echo "Adding tap: ${tap}"
    if ! brew tap "${tap}"; then
      echo "WARNING: Adding of tap ${tap} failed. Skipping it."
    fi
  done
fi

# Homebrew packages

# Install new packages
if [ -f "${DIR}/packages.list" ]; then
  packages_to_install=$(brew leaves | diff -u - "${DIR}/packages.list" | grep '^+[^+]' | sed 's/^+//' | tr '\n' ' ')
  if [ -n "${packages_to_install}" ]; then
    echo "Installing packages: ${packages_to_install}"
    # One at a time: "brew install a b c" stops at the first failure, so a
    # single broken formula would skip every package listed after it.
    for package in ${packages_to_install}; do
      brew install "${package}" || fail "${package} (brew install failed)"
    done
  fi
fi

# Deinstall no longer listed packages
if [ -f "${DIR}/packages.list" ]; then
  packages_to_remove=$(brew leaves | diff -u - "${DIR}/packages.list" | grep '^-[^-]' | sed 's/^-//' | tr '\n' ' ')
  if [ -n "${packages_to_remove}" ]; then
    echo "Uninstalling packages: ${packages_to_remove}"
    for package in ${packages_to_remove}; do
      brew uninstall --force "${package}" || fail "${package} (brew uninstall failed)"
    done
  fi
fi

echo "Upgrading packages..."
brew upgrade || fail "brew upgrade"

echo "Purging no longer needed formulars..."
brew autoremove || fail "brew autoremove"
brew cleanup || fail "brew cleanup"

# Cask

if [ "${NO_SUDO}" ]; then
  echo "Skip installing casks. No sudo allowed."
  [ -z "${had_failure}" ] || exit 1
  exit 0
fi

# Install new Cask packages
if [ -f "${DIR}/packages-cask.list" ]; then
  cask_packages_to_install=$(brew list --cask -1 | diff -u - "${DIR}/packages-cask.list" | grep '^+[^+]' | sed 's/^+//' | tr '\n' ' ')
  if [ -n "${cask_packages_to_install}" ]; then
    echo "Installing cask packages: ${cask_packages_to_install}"
    for cask_package in ${cask_packages_to_install}; do
      brew install --cask --appdir=~/Applications "${cask_package}" \
        || fail "${cask_package} (brew install --cask failed)"
    done
  fi
fi

# Deinstall no longer listed Cask packages
if [ -f "${DIR}/packages-cask.list" ]; then
  cask_packages_to_remove=$(brew list --cask -1 | diff -u - "${DIR}/packages-cask.list" | grep '^-[^-]' | sed 's/^-//' | tr '\n' ' ')
  if [ -n "${cask_packages_to_remove}" ]; then
    echo "Uninstalling cask packages: ${cask_packages_to_remove}"
    for cask_package in ${cask_packages_to_remove}; do
      brew uninstall --cask --force "${cask_package}" \
        || fail "${cask_package} (brew uninstall --cask failed)"
    done
  fi
fi

echo "Upgrading Cask package packages..."
brew upgrade --cask --greedy || fail "brew upgrade --cask"

[ -z "${had_failure}" ] || exit 1
