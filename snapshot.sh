#!/bin/bash -e

# https://stackoverflow.com/questions/59895/getting-the-source-directory-of-a-bash-script-from-within
dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

pushd "${dir}" || exit 1

source lib/common.sh

# Snapshots are only ever taken on a Mac. The Linux machines are VMs that
# restore.sh initialises once and that never snapshot back, so running this
# there would only record a system that is missing most of the tracked files.
if [ "${OS}" != "macos" ]; then
  echo "Snapshots can only be taken on macOS, not on '${OS:-unknown}'."
  echo "Nothing was changed."
  exit 1
fi

echo "Backing up single config files..."
# Directories marked with ".syncfolder" are handled as a whole further down, so
# they are pruned here; otherwise every file in them is copied twice and stale
# entries are reported as missing. ".gitkeep" and the marker files themselves
# are repository bookkeeping with no counterpart in $HOME.
# shellcheck disable=SC2016
find "./files" \
  -type d -exec test -e "{}/.syncfolder" ';' -prune -o \
  \( -type f -o -type l \) ! -name ".gitkeep" ! -name ".syncfolder" ! -name ".nosyncfolder" -exec bash -c '
  target="$1"
  source="$HOME/${target#./files/}" # Replace common dir of files with $HOME
  # "-e" follows symlinks, so a link whose target is gone counts as deleted
  # too. The removal shows up in git status, which is where an unexpected one
  # gets noticed and can be looked into.
  if [ ! -e "$source" ]; then
    # Deleted on this machine, so it goes from the snapshot as well.
    echo "No longer on this system, removing: ${target}"
    rm -f "${target}"
    # Take the directory with it if the removal left it empty, and any parent
    # that empties with it. "rmdir" refuses on anything non-empty, so folders
    # that were always empty, such as the .lproj ones in the copied .app
    # bundles, are left alone.
    parent=$(dirname "${target}")
    while [ "${parent}" != "./files" ] && [ "${parent}" != "./private" ] && [ "${parent}" != "." ]; do
      rmdir "${parent}" 2> /dev/null || break
      parent=$(dirname "${parent}")
    done
  elif ! cp -afv "$source" "$target"; then
    record_failure "${source} (copy failed)"
  fi
' _ {} \;

echo "Backing up single private files..."
# shellcheck disable=SC2016
find "./private" \( -type f -o -type l \) ! -name ".gitkeep" ! -name ".syncfolder" ! -name ".nosyncfolder" -exec bash -c '
  target="$1"
  source="$HOME/${target#./private/}" # Replace common dir of private files with $HOME
  # "-e" follows symlinks, so a link whose target is gone counts as deleted
  # too. The removal shows up in git status, which is where an unexpected one
  # gets noticed and can be looked into.
  if [ ! -e "$source" ]; then
    # Deleted on this machine, so it goes from the snapshot as well.
    echo "No longer on this system, removing: ${target}"
    rm -f "${target}"
    # Take the directory with it if the removal left it empty, and any parent
    # that empties with it. "rmdir" refuses on anything non-empty, so folders
    # that were always empty, such as the .lproj ones in the copied .app
    # bundles, are left alone.
    parent=$(dirname "${target}")
    while [ "${parent}" != "./files" ] && [ "${parent}" != "./private" ] && [ "${parent}" != "." ]; do
      rmdir "${parent}" 2> /dev/null || break
      parent=$(dirname "${parent}")
    done
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
  if [ -d "${source}" ]; then
    cp -afv "$source" "$target" || record_failure "${source} (folder copy failed)"
  else
    # Deleted on this machine, so it goes from the snapshot as well. Only the
    # marker files below are kept, so the folder stays configured for sync and
    # is picked up again should it come back.
    echo "No longer on this system, emptying: ${target}"
    mkdir -p "${target}"
  fi
  touch "${target}/.syncfolder" # recreate sync trigger file

  # Remove content of folders to skip
  OIFS=$IFS;
  IFS="
";
  for file in ${nosync_files}; do
    mkdir -p "${file%/.nosyncfolder}" # may be gone with the folder above
    rm -rf "${file%/.nosyncfolder}"/* > /dev/null 2>&1
    rm -rf "${file%/.nosyncfolder}"/.* > /dev/null 2>&1
    touch "${file}"
  done
  IFS=$OIFS
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
  echo "The snapshot is INCOMPLETE: the items above were not recorded."
  echo "Check them and the working tree before committing."
  exit 1
fi

echo "Added current settings of the system to the repository."
echo "Please do not forget to commit and push the changes."
