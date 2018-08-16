#!/bin/bash

. ./lib/common.sh

echo "Pulling changes from remote..."
if ! git pull; then
  echo "Error pulling from remote. Abort."
  exit 1
fi

echo "Sourcing private environment variables..."
if [ -f "/vagrant/private/environment" ]; then
  . "/vagrant/private/environment"
fi

if [ -f "~/dotfiles/private/environment" ]; then
  . "~/dotfiles/private/environment"
fi

echo "Executing scripts in 'init'..."
find -s "./init" -name '*.sh' -type f -exec bash -c '
  if [ -x "{}" ]; then
    echo "Running {}..."
    cd "$(dirname {})"
    "./$(basename {})"
  fi
' \;

if [ $? != 0 ]; then
  echo "Error running scripts. Abort."
  exit 1
fi

echo "Restoring config files in 'files'..."
find "./files" -type f -exec bash -c '
  file="{}"
  target="${file#./files}"       # Remove common dir of files
  targetPath="${target%/*}"      # Path without filename
  mkdir -p "$HOME$targetPath"
  cp -afv "$file" "$HOME$target"
' \;

if [ $? != 0 ]; then
  echo "Error restoring files. Abort."
  exit 1
fi

echo ""
echo "Done: System has been (re-)initialized."
