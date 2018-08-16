#!/bin/bash

[ -z "${OS}" ] && . ../../lib/common.sh

[ "${OS}" == "macos" ] || exit

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
