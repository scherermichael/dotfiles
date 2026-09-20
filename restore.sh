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
  # A failing script is recorded and the run continues, so that one broken
  # step does not stop the remaining scripts or the file restore below.
  # shellcheck disable=SC2016
  find "./scripts" -name '*.sh' -type f -print0 | sort -z | xargs -0 bash -c '
    for script in "$@"; do
      if [ -x "${script}" ]; then
        echo "Running ${script}..."
        if ! "${script}"; then
          echo "FAILED: ${script}" >&2
          record_failure "${script} (script failed)"
        fi
      fi
    done
  ' _
fi

echo "Restoring config files..."
if ! cp -afv files/. "${HOME}"; then
  record_failure "files/ -> ${HOME} (copy failed)"
fi

echo "Restoring private files to HOME and iCloud..."
if ! cp -afv private "${HOME}"; then
  record_failure "private/ -> ${HOME} (copy failed)"
fi
icloud="${HOME}/Library/Mobile Documents/com~apple~CloudDocs/dotfiles"
if ! mkdir -p "${icloud}"; then
  record_failure "${icloud} (could not be created)"
elif ! cp -afv private "${icloud}"; then
  record_failure "private/ -> ${icloud} (copy failed)"
fi

popd || exit 1

echo ""
if ! report_failures; then
  echo ""
  echo "The restore is INCOMPLETE. Review the list above; the steps that"
  echo "succeeded have been applied."
  exit 1
fi

if [ "${NO_SCRIPTS}" ]; then
  echo "Done: Configuration files are restored."
else
  echo "Done: System is restored."
fi
