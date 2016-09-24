#!/bin/bash

# From https://gist.github.com/bmhatfield/cc21ec0a3a2df963bffa3c1f884b676b

if [ -z "$(which gpg)" ]; then exit; fi

cat >> ~/.gnupg/gpg.conf <<EOF
# Use GPG agent for storing the passphrase
use-agent
EOF

cat >> ~/.gnupg/gpg-agent.conf <<EOF
# Enables GPG to find gpg-agent
use-standard-socket

# Caching
# default 8h
default-cache-ttl 28800
# max 24h
max-cache-ttl 86400
ignore-cache-for-signing
EOF