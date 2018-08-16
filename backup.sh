#!/bin/bash -e

echo "Backing up config files in 'files'..."
find "./files" -type f -exec bash -c '
  target="{}"
  source="$HOME/${target#./files/}" # Replace common dir of files with $HOME
  cp -afv "$source" "$target"
' \;

echo "Retrieving list of installed Homebrew packages..."
brew list -1 > init/10_brew/packages.list
brew cask list -1 > init/10_brew-cask/packages.list

echo "Retrieving list of installed/disabled Atom plugins..."
apm ls --disabled --bare | sed 's/@.*$//' | sed '/^$/d' > init/atom-plugins/disabled.list
apm ls --installed --bare | sed 's/@.*$//' | sed '/^$/d' > init/atom-plugins/installed.list

echo ""
echo "Copied files from $HOME into the repository."
echo "Please do not forget to commit and push the changes."
