#!/bin/bash

[ -z "${OS}" ] && . ../../lib/common.sh

[ "${OS}" == "macos" ] || exit

# Init

if which -s brew; then
  echo "Updating Brew..."
  # Intentionally running it twice
  brew update
  brew update
else
  echo "Installing Brew"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" </dev/null
fi

echo "Installing Homebrew Cask..."
brew tap caskroom/cask

if $(ls -l /usr/local/ | tail -n +2 | grep -v " admin "); then
  # Not all folders in /usr/local belong to the "admin" group
  echo "Updating permissions for /usr/local..."
  # https://gist.github.com/jaibeee/9a4ea6aa9d428bc77925
  # allow admins to manage homebrew's local install directory
  sudo chgrp -R admin /usr/local/*
  sudo chmod -R g+w /usr/local/*
fi

# Homebrew packages

# Install new packages
if [ -f "packages.list" ]; then
  while read -r package
  do
    echo "Installing package $package..."
    brew install "$package"
done < <(brew leaves -1 | diff -u - packages.list | grep '^+[^+]' | sed 's/^+//')
fi

# Deinstall no longer listed packages
if [ -f "packages.list" ]; then
  while read -r package
  do
    echo "Uninstalling package $package..."
    brew uninstall --force "$package"
done < <(brew leaves -1 | diff -u - packages.list | grep '^-[^-]' | sed 's/^-//')
fi

echo "Upgrading packages..."
brew upgrade

# Cask

# Install new Cask packages
if [ -f "packages-cask.list" ]; then
  while read -r package
  do
    echo "Installing Cask package $package..."
    brew cask install "$package"
done < <(brew cask list -1 | diff -u - packages-cask.list | grep '^+[^+]' | sed 's/^+//')
fi

# Deinstall no longer listed Cask packages
if [ -f "packages-cask.list" ]; then
  while read -r package
  do
    echo "Uninstalling Cask package $package..."
    brew cask uninstall --force "$package"
done < <(brew cask list -1 | diff -u - packages-cask.list | grep '^-[^-]' | sed 's/^-//')
fi

echo "Upgrading Cask package packages..."
brew cask upgrade
