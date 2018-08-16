#!/bin/bash

NODE_VERSION=8

if [ -d ~/.nvm ]; then
  # Upgrade
  cd ~/.nvm && git fetch origin && git checkout `git describe --abbrev=0 --tags`
else
  # Install
  git clone https://github.com/creationix/nvm.git ~/.nvm && cd ~/.nvm && git checkout `git describe --abbrev=0 --tags`
fi

. ~/.nvm/nvm.sh
nvm install ${NODE_VERSION}
nvm alias default ${NODE_VERSION}

# By default save exact version as dependency
npm config set save-exact true

# Install global modules
modules=" \
  flaschenpost \
  forany \
  npm-check-updates \
  reqd \
  serverless \
  roboter-cli \
"

for module in ${modules}; do
  npm install -g "${module}"
done;
