#!/bin/bash

# Check for arguments
if [ "$1" = "--no-scripts" ]; then
  export NO_SCRIPTS=true
fi
if [ "$1" = "--no-sudo" ]; then
  export NO_SUDO=true
fi

# Check for vmware
if pgrep vmware-tools > /dev/null; then
  export IS_VM=true
fi

# Check for virtualbox
if pgrep VBoxService > /dev/null; then
  export IS_VM=true
fi

# See: http://stackoverflow.com/questions/394230/detect-the-os-from-a-bash-script
case $OSTYPE in
  linux*)
    export OS=linux
    ;;
  darwin*)
    export OS=macos
    ;;
  cygwin*)
    export OS=cygwin
    ;;
  msys*)
    export OS=msys
    ;;
  win*)
    export OS=win
    ;;
  freebsd*)
    export OS=freebsd
    ;;
esac

# Failure reporting
#
# A command that fails inside "find -exec" or "xargs" does not stop the calling
# script, so failures are collected here and reported at the end. This keeps a
# partial run from finishing with a success message.
#
# FAILURES is exported so that inner "bash -c" invocations and the scripts
# started by restore.sh append to the same log. It is only created once: a child
# that sources this file again inherits the parent's log and must not delete it.
if [ -z "${FAILURES}" ]; then
  FAILURES="$(mktemp "${TMPDIR:-/tmp}/dotfiles.XXXXXX")"
  export FAILURES
  # shellcheck disable=SC2064
  trap "rm -f '${FAILURES}'" EXIT
fi

# Record one failed item, e.g. record_failure "${file} (copy failed)"
record_failure() {
  echo "$*" >> "${FAILURES}"
}
export -f record_failure

# List everything recorded. Returns 1 if anything was, so callers can do:
#   if ! report_failures; then ... exit 1; fi
report_failures() {
  [ -s "${FAILURES}" ] || return 0
  echo "WARNING: $(grep -c '' "${FAILURES}") item(s) failed:"
  sed 's/^/  - /' "${FAILURES}"
  return 1
}
