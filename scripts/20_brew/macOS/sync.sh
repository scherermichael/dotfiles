#!/bin/bash

set -e

# https://stackoverflow.com/questions/59895/getting-the-source-directory-of-a-bash-script-from-within
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

[ -z "${OS}" ] && . lib/common.sh

[ "${OS}" = "macos" ] || exit 0

# Arm binaries are stored under /opt/homebrew/bin while x86 binaries are stored under /usr/local/bin.
# On x86, create symlink /opt/homebrew/bin pointing to /usr/local/bin to allow to use path /opt/homebrew/bin all the time.
if [ "$(uname -p)" = "i386" ]; then
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
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

echo "Tapping additional resources..."
brew tap homebrew/cask-fonts

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

# Homebrew packages

# Install new packages
if [ -f "${DIR}/packages.list" ]; then
  packages_to_install=$(brew leaves | diff -u - "${DIR}/packages.list" | grep '^+[^+]' | sed 's/^+//' | tr '\n' ' ')
  if [ -n "${packages_to_install}" ]; then
    echo "Installing packages: ${packages_to_install}"
    if ! brew install ${packages_to_install}; then
      echo "ERROR: Installation of packages failed!"
      exit 2
    fi
  fi
fi

# Deinstall no longer listed packages
if [ -f "${DIR}/packages.list" ]; then
  packages_to_remove=$(brew leaves | diff -u - "${DIR}/packages.list" | grep '^-[^-]' | sed 's/^-//' | tr '\n' ' ')
  if [ -n "${packages_to_remove}" ]; then
    echo "Uninstalling packages: ${packages_to_remove}"
    if ! brew uninstall --force ${packages_to_remove}; then
      echo "ERROR: De-installation of packages failed!"
      exit 3
    fi
  fi
fi

echo "Upgrading packages..."
if ! brew upgrade; then
  echo "ERROR: Upgrade of packages failed!"
  exit 4
fi

# Cask

# Install new Cask packages
if [ -f "${DIR}/packages-cask.list" ]; then
  cask_packages_to_install=$(brew list --cask -1 | diff -u - "${DIR}/packages-cask.list" | grep '^+[^+]' | sed 's/^+//' | tr '\n' ' ')
  if [ -n "${cask_packages_to_install}" ]; then
    echo "Installing cask packages: ${cask_packages_to_install}"
    if ! brew install --cask ${cask_packages_to_install}; then
      echo "ERROR: Installation of cask packages failed!"
      exit 5
    fi
  fi
fi

# Deinstall no longer listed Cask packages
if [ -f "${DIR}/packages-cask.list" ]; then
  cask_packages_to_remove=$(brew list --cask -1 | diff -u - "${DIR}/packages-cask.list" | grep '^-[^-]' | sed 's/^-//' | tr '\n' ' ')
  if [ -n "${cask_packages_to_remove}" ]; then
    echo "Uninstalling cask packages: ${cask_packages_to_remove}"
    if ! brew uninstall --cask --force ${cask_packages_to_remove}; then
      echo "ERROR: De-installation of cask packages failed!"
      exit 6
    fi
  fi
fi

echo "Upgrading Cask package packages..."
if ! brew upgrade --cask; then
  echo "ERROR: Upgrade of cask packages failed!"
  exit 7
fi
