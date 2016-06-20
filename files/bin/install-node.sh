#/bin/bash

NODE_VERSION=4

if [ -d ~/.nvm ]; then
  # Upgrade
  cd ~/.nvm && git pull origin master && git checkout `git describe --abbrev=0 --tags`
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
  eslint \
  eslint-config-es \
  eslint-plugin-extended \
  eslint-plugin-mocha \
  eslint-plugin-react \
  flaschenpost \
  forany \
  grunt \
  grunt-init \
  reqd \
  roboter-cli \
"

for module in ${modules}; do
  npm install -g "${module}"
done;

# Install Node-related plugins in Atom
apm install linter
apm install linter-eslint
apm install react
