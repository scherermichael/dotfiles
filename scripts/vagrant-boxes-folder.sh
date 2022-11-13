#!/bin/bash

[ -z "${OS}" ] && source lib/common.sh

[ "${OS}" = "macos" ] || exit 0

# Skip if in vm
[ "${IS_VM}" ] && exit 0

[ "${NO_SUDO}" ] && exit 0

# Skip if folder already exists
[ -e /opt/vagrant-boxes/ ] && exit 0

sudo mkdir -p /opt/vagrant-boxes/
sudo chmod -R +a "staff allow list,add_file,search,add_subdirectory,delete_child,readattr,writeattr,readextattr,writeextattr,readsecurity,file_inherit,directory_inherit" /opt/vagrant-boxes/

mv ~/.vagrant.d/boxes ~/.vagrant.d/boxes.old
ln -s /opt/vagrant-boxes ~/.vagrant.d/boxes
