#!/bin/bash -e

# https://stackoverflow.com/questions/59895/getting-the-source-directory-of-a-bash-script-from-within
dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

pushd "${dir}" || exit 1

source lib/common.sh

echo "Backing up single config files..."
find "./files" -type f -exec bash -c '
  target="$1"
  source="$HOME/${target#./files/}" # Replace common dir of files with $HOME
  cp -afv "$source" "$target"
' _ {} \;

echo "Backing up whole config folders..."
find "./files" -type f -name ".syncfolder" -print0 | xargs -0 -n 1 bash -c '
  # We found a file and must get the directory from its path
  dir=${1%/.syncfolder}
  target="${dir}"
  source="$HOME/${dir#./files/}" # Replace common dir of files with $HOME

  # Search for skip files
  nosync_files=$(find "${target}" -type f -name ".nosyncfolder")

  rm -rf "${target}" # Remove old target dir first
  cp -afv "$source" "$target" # Copy all current files into target dir
  touch "${target}/.syncfolder" # recreate sync trigger file

  # Remove content of folders to skip
  OIFS=$IFS;
  IFS="
";
  for file in ${nosync_files}; do
    rm -rf "${file%/.nosyncfolder}"/* > /dev/null 2>&1
    rm -rf "${file%/.nosyncfolder}"/.* > /dev/null 2>&1
    touch "${file}"
  done
' _

echo "Retrieving list of installed Homebrew packages..."
if which brew > /dev/null; then
  brew leaves > scripts/10_homebrew/${OS}/packages.list
  brew list --cask -1 > scripts/10_homebrew/${OS}/packages-cask.list
else
  echo "Skip. Brew not found."
fi

echo "Retrieving list of installed/disabled Atom plugins..."
if which apm > /dev/null; then
  apm ls --disabled --bare | sed 's/@.*$//' | sed '/^$/d' > scripts/atom-plugins/disabled.list
  apm ls --installed --bare | sed 's/@.*$//' | sed '/^$/d' > scripts/atom-plugins/installed.list
else
  echo "Skip. Apm not found."
fi

echo "Retrieving list of installed Visual Studio Code extensions..."
if which code > /dev/null; then
  code --list-extensions > scripts/vscode-extensions/installed.list
else
  echo "Skip. Code not found."
fi

popd || exit 1

echo ""
echo "Added current settings of the system to the repository."
echo "Please do not forget to commit and push the changes."
