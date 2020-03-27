#!/bin/bash

# https://stackoverflow.com/questions/59895/getting-the-source-directory-of-a-bash-script-from-within
dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

pushd "${dir}" || exit 1

. lib/common.sh

echo "Sourcing private environment variables..."
if [ -f "/vagrant/dotfiles/private/environment" ]; then
  . "/vagrant/dotfiles/private/environment"
fi

if [ -f "${HOME}/dotfiles/private/environment" ]; then
  . "${HOME}/dotfiles/private/environment"
fi

if [ "$1" != "--no-scripts" ]; then
  echo "Executing scripts in 'scripts'..."
  # shellcheck disable=SC2016
  find "./scripts" -name '*.sh' -type f -print0 | sort -z | xargs -0 bash -c '
    for script in "$@"; do
      if [ -x "${script}" ]; then
        echo "Running $script..."
        "./${script}"
      fi
    done
  ' _

  if [ $? != 0 ]; then
    echo "Error running scripts. Abort."
    exit 1
  fi
fi

echo "Restoring config files..."
find "./files" -type f -exec bash -c '
  file="$1"
  target="${file#./files}"       # Remove common dir of files
  targetPath="${target%/*}"      # Path without filename
  mkdir -p "$HOME$targetPath"
  cp -afv "$file" "$HOME$target"
' _ {} \;

if [ $? != 0 ]; then
  echo "Error restoring files. Abort."
  exit 1
fi

popd || exit 1

echo ""
if [ "$1" != "--no-scripts" ]; then
  echo "Done: System is restored."
else
  echo "Done: Configuration files are restored."
fi
