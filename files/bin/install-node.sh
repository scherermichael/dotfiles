#/bin/bash

NODE_VERSION=4
NVM_VERSION=0.29.0

curl -o- https://raw.githubusercontent.com/creationix/nvm/v${NVM_VERSION}/install.sh | bash
. ~/.nvm/nvm.sh
nvm install ${NODE_VERSION}
nvm alias default ${NODE_VERSION}

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
  roboter \
"

for module in ${modules}; do
  npm install -g "${module}"
done;
