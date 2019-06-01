#!/bin/bash -e

# https://stackoverflow.com/questions/59895/getting-the-source-directory-of-a-bash-script-from-within
dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

pushd "${dir}" || exit 1

echo "Backing up config files in 'files'..."
find "./files" -type f -exec bash -c '
  target="$1"
  source="$HOME/${target#./files/}" # Replace common dir of files with $HOME
  cp -afv "$source" "$target"
' _ {} \;

echo "Retrieving list of installed Homebrew packages..."
brew leaves > scripts/10_brew/packages.list
brew cask list -1 > scripts/10_brew/packages-cask.list

echo "Retrieving list of installed/disabled Atom plugins..."
apm ls --disabled --bare | sed 's/@.*$//' | sed '/^$/d' > scripts/atom-plugins/disabled.list
apm ls --installed --bare | sed 's/@.*$//' | sed '/^$/d' > scripts/atom-plugins/installed.list

popd || exit 1

echo ""
echo "Added current settings of the system to the repository."
echo "Please do not forget to commit and push the changes."
