#!/bin/bash

set -e

# https://stackoverflow.com/questions/59895/getting-the-source-directory-of-a-bash-script-from-within
dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

pushd "${dir}" || exit 1

source lib/common.sh

# Everything below copies out of here, so tightening the working copy once is
# what keeps the secrets unreadable to others, on a fresh clone too.
if [ -d private ] && ! chmod -R go-rwx private; then
  record_failure "private/ (could not be locked down)"
fi

echo "Sourcing private environment variables..."
# The repository first, so this does not care where the checkout sits; then the
# host's repository mounted into a VM; then the staging copy an earlier restore
# left behind. First match wins and is printed, because sourcing all three lets a
# stale one stay authoritative for years without anyone noticing.
environment=""
for candidate in \
  "${dir}/private/environment" \
  "/vagrant/dotfiles/private/environment" \
  "${HOME}/private/environment"; do
  if [ -f "${candidate}" ]; then
    environment="${candidate}"
    break
  fi
done

if [ -n "${environment}" ]; then
  echo "  from ${environment}"
  # shellcheck disable=SC1090
  source "${environment}"
else
  echo "  none found - scripts that need a secret will fail or skip."
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

# A backup, not a transport: nothing ever reads it back. It copies what is on the
# machine, before the staging copy below overwrites it, because that is the only
# copy that can hold anything the repository does not: an edit made in place, or
# a file the repository has since dropped. Each machine writes under its own name
# because the copy overwrites same-named files and the machines hold different
# private files. LocalHostName rather than ComputerName: macOS keeps it to
# letters, digits and hyphens, so it is safe in a path.
iclouddrive="${HOME}/Library/Mobile Documents/com~apple~CloudDocs"
# "|| true" because under "set -e" an assignment whose substitution fails takes
# the script down, so a machine with neither command would abort instead of skip.
host="$(scutil --get LocalHostName 2> /dev/null || hostname -s 2> /dev/null || true)"

if [ "${OS}" != "macos" ] || [ ! -d "${iclouddrive}" ]; then
  # Without this the "mkdir -p" below invents a "Library/Mobile Documents" tree
  # on the Linux boxes. Having nothing to back up is not a failure.
  echo "Skipping iCloud backup: no iCloud Drive on this system."
elif [ -z "${host}" ]; then
  echo "Skipping iCloud backup: could not determine this machine's name."
elif [ ! -d "${HOME}/private" ]; then
  # A machine that has never been restored has nothing of its own yet.
  echo "Skipping iCloud backup: no ${HOME}/private to back up yet."
else
  icloud="${iclouddrive}/dotfiles/backup/${host}"
  echo "Backing ${HOME}/private up to iCloud as '${host}'..."
  if ! mkdir -p "${icloud}"; then
    record_failure "${icloud} (could not be created)"
  elif ! cp -afv "${HOME}/private" "${icloud}"; then
    record_failure "${HOME}/private -> ${icloud} (copy failed)"
  elif ! chmod -R go-rwx "${icloud}"; then
    record_failure "${icloud} (could not be locked down)"
  fi
fi

echo "Restoring private files to ${HOME}/private..."
if ! cp -afv private "${HOME}"; then
  record_failure "private/ -> ${HOME} (copy failed)"
fi
# "cp -af" reproduces the repository's modes, which are whatever the umask left
# there, so the staged secrets would sit world-readable without this.
if ! chmod -R go-rwx "${HOME}/private"; then
  record_failure "${HOME}/private (could not be locked down)"
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
