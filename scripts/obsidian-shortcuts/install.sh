#!/bin/bash
#
# Install the vault inbox shortcuts on this Mac - see README.md next to this file.
#
# Run from the repo root by restore.sh, which does a pushd first. The vault list
# is read straight out of the working copy's private/, as 90_agent_configs.sh
# does: restore.sh runs the scripts before it stages private/ to $HOME/private.
# The staged copy is the fallback for a run by hand on a machine whose checkout
# has no private/.
#
# Arguments go to vault_shortcuts.py: none means install, "status" only reports.

set -uo pipefail

# OS comes from lib/common.sh under restore.sh; uname covers a run by hand.
if [ "${OS:-}" != "macos" ] && [ "$(uname -s)" != "Darwin" ]; then
  exit 0
fi

here="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null && pwd)"
dir="$(cd "${here}/../.." >/dev/null && pwd)"

config=""
for candidate in "${dir}/private/obsidian-vaults.sh" "${HOME}/private/obsidian-vaults.sh"; do
  if [ -f "${candidate}" ]; then
    config="${candidate}"
    break
  fi
done
if [ -z "${config}" ]; then
  echo "Vault inbox shortcuts: no private/obsidian-vaults.sh, skipped."
  exit 0
fi

# shellcheck disable=SC1090
source "${config}"
if ! declare -p inboxVaultLabels > /dev/null 2>&1; then
  echo "Vault inbox shortcuts: ${config} lists no inbox vaults, skipped."
  exit 0
fi

args=()
for i in "${!inboxVaultLabels[@]}"; do
  args+=(--vault "${inboxVaultLabels[$i]}" "${inboxVaultRoots[$i]}" \
    "${inboxVaultInboxes[$i]}" "${inboxVaultPhoneRoots[$i]:-}")
done
if declare -p inboxRetiredShortcuts > /dev/null 2>&1; then
  for name in "${inboxRetiredShortcuts[@]}"; do
    args+=(--retire "${name}")
  done
fi

echo "Vault inbox shortcuts (vaults from ${config})..."
exec python3 "${here}/vault_shortcuts.py" "$@" "${args[@]}"
