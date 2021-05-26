#!/bin/bash

# Install latest LTS by default
NODE_VERSION="${1:-lts/*}"

if [ -d ~/.nvm ]; then
  # Upgrade
  cd ~/.nvm && git fetch --tags origin && git checkout "$(git describe --abbrev=0 --tags --match "v[0-9]*" "$(git rev-list --tags --max-count=1)")"
else
  # Install
  git clone https://github.com/creationix/nvm.git ~/.nvm && cd ~/.nvm && git checkout "$(git describe --abbrev=0 --tags --match "v[0-9]*" "$(git rev-list --tags --max-count=1)")"
fi

. ~/.nvm/nvm.sh
nvm install "${NODE_VERSION}"
nvm alias default "${NODE_VERSION}"

# By default save exact version as dependency
npm config set save-exact true

# Install global modules
modules="
forany
fx
hygen
npm-check-updates
rtm-cli
serverless
yo
"

while read -r module
do
  if [ -z "$module" ]; then continue; fi
  npm install -g "${module}"
done <<<"$modules"
