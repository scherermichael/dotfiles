#!/bin/bash
#
# Install the launch agent that backs the Obsidian vaults up once an hour:
# ~/Library/LaunchAgents/local.vault-backup.plist, running backup-all.sh from
# the obsidian-template checkout. The backup itself is described there, in
# README.md, "Backups".
#
# The same on every Mac: backup-all.sh backs up only the vaults whose
# "jobHost" is the Mac it runs on, so elsewhere the agent runs and does
# nothing. A Mac without the checkout is skipped with a line.
#
# A launch agent and not a crontab line: it runs inside the login session,
# where `security` may use the login keychain that holds the restic passwords.
# From cron every hourly run failed at the password (2026-11-22). And a run
# that falls into sleep is made up on waking, where cron skips it.
#
# Written here rather than kept in files/: restore.sh runs the scripts before
# it copies files/, so a plist from there would not exist yet when this loads
# it. Run again, it replaces the agent - which is how a changed plist takes
# effect.

set -euo pipefail

if [ "$(uname)" != Darwin ]; then
  echo "Skipping the vault backup agent: not macOS."
  exit 0
fi

LABEL="local.vault-backup"
SCRIPT="${HOME}/projects/obsidian-template/backup-all.sh"
PLIST="${HOME}/Library/LaunchAgents/${LABEL}.plist"
STATE="${HOME}/.local/state/vault-backup"

if [ ! -x "${SCRIPT}" ]; then
  echo "Skipping the vault backup agent: no ${SCRIPT} on this Mac."
  exit 0
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
        <string>${SCRIPT}</string>
    </array>
    <key>StartCalendarInterval</key>
    <dict>
        <key>Minute</key>
        <integer>0</integer>
    </dict>
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
echo "Vault backup agent loaded: ${PLIST}"
