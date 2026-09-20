#!/bin/bash
#
# Install the agent configs that cannot live in files/.
#
# restore.sh merges files/. into $HOME, but it copies private/ to $HOME/private
# and to iCloud rather than merging it - so a private config would be staged,
# not installed. This closes that gap for the files lmx owns.
#
# Only opencode's config needs it: it carries the searxng Basic credential, and
# opencode has no way to reference a secret indirectly (its only env support is
# for spawning local MCP servers, and searxng is remote). Hermes' config has no
# secret and rides along in files/ like anything else.
#
# Run from the repo root by restore.sh, which does a pushd first, so the private
# tree is read straight out of the working copy - no dependency on the staging
# copy that happens later in restore.

set -uo pipefail

dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." >/dev/null && pwd)"

install_private() {
    local rel="$1" src="${dir}/private/$1" dest="${HOME}/$1"

    [ -f "${src}" ] || { echo "  skip ${rel} (not in private/)"; return 0; }

    mkdir -p "$(dirname "${dest}")"
    # install -m, not cp then chmod: the file holds a password, and this sets
    # the mode as it lands instead of leaving it briefly at the umask default.
    if install -m 600 "${src}" "${dest}"; then
        echo "  installed ${rel} (600)"
    else
        echo "  FAILED ${rel}" >&2
        return 1
    fi
}

echo "Installing private agent configs..."
install_private ".config/opencode/opencode.jsonc"
