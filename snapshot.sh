#!/bin/bash -e

# https://stackoverflow.com/questions/59895/getting-the-source-directory-of-a-bash-script-from-within
dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

pushd "${dir}" || exit 1

. lib/common.sh

echo "Backing up single config files..."
find "./files" -type f -exec bash -c '
  target="$1"
  source="$HOME/${target#./files/}" # Replace common dir of files with $HOME
  cp -afv "$source" "$target"
' _ {} \;

echo "Backing up whole config folders..."
find "./files" -type f -name ".syncfolder" -exec bash -c '
  # We found a file and must get the directory from its path
  dir=${1%/*}
  target="${dir}"
  source="$HOME/${dir#./files/}" # Replace common dir of files with $HOME
  rm -rf "${target}" # Remove old target dir first
  cp -afv "$source" "$target" # Copy all current files into target dir
  touch "${target}/.syncfolder" # recreate trigger file
' _ {} \;

echo "Retrieving list of installed Homebrew packages..."
brew leaves > scripts/20_brew/${OS}/packages.list
brew cask list -1 > scripts/20_brew/${OS}/packages-cask.list

echo "Retrieving list of installed/disabled Atom plugins..."
apm ls --disabled --bare | sed 's/@.*$//' | sed '/^$/d' > scripts/atom-plugins/disabled.list
apm ls --installed --bare | sed 's/@.*$//' | sed '/^$/d' > scripts/atom-plugins/installed.list

echo "Retrieving list of installed Visual Studio Code extensions..."
code --list-extensions > scripts/vscode-extensions/installed.list

popd || exit 1

echo ""
echo "Added current settings of the system to the repository."
echo "Please do not forget to commit and push the changes."
