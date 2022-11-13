#!/bin/bash

set -e

# https://stackoverflow.com/questions/59895/getting-the-source-directory-of-a-bash-script-from-within
dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

pushd "${dir}" || exit 1

source lib/common.sh

echo "Sourcing private environment variables..."
if [ -f "/vagrant/dotfiles/private/environment" ]; then
  source "/vagrant/dotfiles/private/environment"
fi

if [ -f "${HOME}/dotfiles/private/environment" ]; then
  source "${HOME}/dotfiles/private/environment"
fi

if [ "${NO_SCRIPTS}" ]; then
  echo "Skipping scripts..."
else
  echo "Executing scripts in 'scripts'..."
  # shellcheck disable=SC2016
  find "./scripts" -name '*.sh' -type f -print0 | sort -z | xargs -0 bash -c '
    set -e
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
cp -afv files/. "${HOME}"

if [ $? != 0 ]; then
  echo "Error restoring files. Abort."
  exit 1
fi

popd || exit 1

echo ""
if [ "${NO_SCRIPTS}" ]; then
  echo "Done: Configuration files are restored."
else
  echo "Done: System is restored."
fi
