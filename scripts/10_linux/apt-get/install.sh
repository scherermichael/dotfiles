#!/bin/bash

set -e

# https://stackoverflow.com/questions/59895/getting-the-source-directory-of-a-bash-script-from-within
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

[ -z "${OS}" ] && source lib/common.sh

[ "${OS}" = "linux" ] || exit 0

[ "${NO_SUDO}" ] && exit 0

# Skip configuration
export DEBIAN_FRONTEND=noninteractive

# Update metadata
sudo apt-get update

# Install new packages
if [ -f "${DIR}/packages.list" ]; then
  while read -r package
  do
    sudo apt-get install -yq "${package}"
  done < "${DIR}/packages.list"
fi
