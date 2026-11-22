#!/bin/bash
#
# Install the launch agent that runs the Supernote job every eleven minutes:
# ~/Library/LaunchAgents/local.supernote-job.plist, starting ~/bin/supernote-job,
# a small program built here from supernote_job.swift, which runs
# ~/bin/supernote-work-commit.sh.
#
# An agent and not the crontab line it replaces: the job's digest reads its
# token from the login keychain, and cron runs outside the login session,
# where security may not use it. The digest was skipped silently from
# 2026-09-12 until it was noticed on 2026-11-22. A launch agent runs inside
# the session.
#
# Why a program of its own between agent and script: supernote_job.swift says.
# It needs Full Disk Access, given once by hand in System Settings, and macOS
# ties that grant to the exact build - a rebuild silently takes it away. So it
# is built only when it is missing or its source changed, not on every
# restore as vault-note is, and a build says what has to be done next.
#
# The same on every Mac: the job stops at once where its vault's "jobHost" is
# another Mac.
#
# Written here rather than kept in files/: restore.sh runs the scripts before
# it copies files/. Run again, it replaces the agent - which is how a changed
# plist takes effect.

set -euo pipefail

if [ "$(uname)" != Darwin ]; then
  echo "Skipping the Supernote agent: not macOS."
  exit 0
fi

HERE="$(cd "$(dirname "$0")" && pwd)"
LABEL="local.supernote-job"
SOURCE="${HERE}/supernote_job.swift"
LAUNCHER="${HOME}/bin/supernote-job"
STAMP="${LAUNCHER}.source-sha256"
PLIST="${HOME}/Library/LaunchAgents/${LABEL}.plist"
STATE="${HOME}/.local/state/supernote-sync"

digest() { shasum -a 256 "${SOURCE}" | cut -d' ' -f1; }

if [ ! -x "${LAUNCHER}" ] || [ "$(cat "${STAMP}" 2> /dev/null)" != "$(digest)" ]; then
  # Asked through xcode-select first, as vault_shortcuts.py does: on a Mac
  # without the Command Line Tools, xcrun would open the dialog that offers
  # to install them, in the middle of restore.sh.
  if ! xcode-select -p > /dev/null 2>&1; then
    echo "FAILED: Supernote launcher: no Swift compiler (xcode-select --install)" >&2
    exit 1
  fi
  mkdir -p "$(dirname "${LAUNCHER}")"
  # Built beside the old one and moved over it, so a failed build leaves the
  # working launcher - and its Full Disk Access - in place. Through xcrun:
  # started directly, swiftc knows no SDK.
  xcrun swiftc -O -o "${LAUNCHER}.new" "${SOURCE}"
  mv "${LAUNCHER}.new" "${LAUNCHER}"
  digest > "${STAMP}"
  echo "Supernote launcher built: ${LAUNCHER}"
  echo "  Give it Full Disk Access now - System Settings, Privacy & Security,"
  echo "  Full Disk Access, +, then ${LAUNCHER}. Every new build needs this again."
fi

mkdir -p "$(dirname "${PLIST}")" "${STATE}"
cat > "${PLIST}" <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key>
    <string>${LABEL}</string>
    <key>ProgramArguments</key>
    <array>
        <string>${LAUNCHER}</string>
    </array>
    <key>StartInterval</key>
    <integer>660</integer>
    <key>StandardOutPath</key>
    <string>${STATE}/launchd.log</string>
    <key>StandardErrorPath</key>
    <string>${STATE}/launchd.log</string>
</dict>
</plist>
EOF
plutil -lint "${PLIST}" > /dev/null

# bootout first: bootstrap refuses an agent that is already loaded.
launchctl bootout "gui/$(id -u)/${LABEL}" 2> /dev/null || true
launchctl bootstrap "gui/$(id -u)" "${PLIST}"
echo "Supernote agent loaded: ${PLIST}"
