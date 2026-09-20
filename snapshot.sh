#!/bin/bash -e

# https://stackoverflow.com/questions/59895/getting-the-source-directory-of-a-bash-script-from-within
dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

pushd "${dir}" || exit 1

source lib/common.sh

echo "Backing up single config files..."
# Directories marked with ".syncfolder" are handled as a whole further down, so
# they are pruned here; otherwise every file in them is copied twice and stale
# entries are reported as missing. ".gitkeep" and the marker files themselves
# are repository bookkeeping with no counterpart in $HOME.
find "./files" \
  -type d -exec test -e "{}/.syncfolder" ';' -prune -o \
  -type f ! -name ".gitkeep" ! -name ".syncfolder" ! -name ".nosyncfolder" -exec bash -c '
  target="$1"
  source="$HOME/${target#./files/}" # Replace common dir of files with $HOME
  if [ ! -e "$source" ]; then
    echo "MISSING: $source" >&2
    record_failure "${source} (not present on this system)"
  elif ! cp -afv "$source" "$target"; then
    record_failure "${source} (copy failed)"
  fi
' _ {} \;

echo "Backing up single private files..."
find "./private" -type f ! -name ".gitkeep" ! -name ".syncfolder" ! -name ".nosyncfolder" -exec bash -c '
  target="$1"
  source="$HOME/${target#./private/}" # Replace common dir of private files with $HOME
  if [ ! -e "$source" ]; then
    echo "MISSING: $source" >&2
    record_failure "${source} (not present on this system)"
  elif ! cp -afv "$source" "$target"; then
    record_failure "${source} (copy failed)"
  fi
' _ {} \;

echo "Backing up whole config folders..."
# shellcheck disable=SC2016
find "./files" -type f -name ".syncfolder" -print0 | xargs -0 -n 1 bash -c '
  # We found a file and must get the directory from its path
  dir=${1%/.syncfolder}
  target="${dir}"
  source="$HOME/${dir#./files/}" # Replace common dir of files with $HOME

  # Search for skip files
  nosync_files=$(find "${target}" -type f -name ".nosyncfolder")

  rm -rf "${target}" # Remove old target dir first
  if ! cp -afv "$source" "$target"; then # Copy all current files into target dir
    record_failure "${source} (folder copy failed)"
    exit 0 # Nothing to post-process; exit 0 so xargs does not abort the run
  fi
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
  brew tap > scripts/10_homebrew/taps.list
  brew leaves > scripts/10_homebrew/packages.list
  brew list --cask -1 > scripts/10_homebrew/packages-cask.list
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
if ! report_failures; then
  echo ""
  echo "The snapshot is INCOMPLETE. Review the list above before committing,"
  echo "otherwise the repository keeps the previous version of those files."
  exit 1
fi

echo "Added current settings of the system to the repository."
echo "Please do not forget to commit and push the changes."
