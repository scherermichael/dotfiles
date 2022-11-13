#!/bin/bash

# From https://gist.github.com/bmhatfield/cc21ec0a3a2df963bffa3c1f884b676b

[ -z "${OS}" ] && source lib/common.sh

[ "${OS}" = "macos" ] || exit 0

command -v gpg > /dev/null || exit 0

if [ ! -f ~/.gnupg/gpg.conf ]; then
  echo "Skip patching GPG config. No gpg.conf found."
  exit 0
fi

# Use GPG to sign Git commits
git config --global commit.gpgsign true

if ! grep -q "use-agent" ~/.gnupg/gpg.conf; then
  cat >> ~/.gnupg/gpg.conf <<EOF
# Use GPG agent for storing the passphrase
use-agent
EOF
fi

if ! grep -q "pinentry-program $(brew --prefix)/bin/pinentry-mac" ~/.gnupg/gpg-agent.conf; then
  cat > ~/.gnupg/gpg-agent.conf <<EOF
pinentry-program $(brew --prefix)/bin/pinentry-mac
# caching: default 8h
default-cache-ttl 28800
# caching: max 24h
max-cache-ttl 86400
EOF
fi
