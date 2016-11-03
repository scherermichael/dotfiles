#!/bin/bash

sudo mkdir -p /opt/vagrant-boxes/
sudo chmod -R +a "staff allow list,add_file,search,add_subdirectory,delete_child,readattr,writeattr,readextattr,writeextattr,readsecurity,file_inherit,directory_inherit" /opt/vagrant-boxes/

mv ~/.vagrant.d/boxes ~/.vagrant.d/boxes.old
ln -s /opt/vagrant-boxes ~/.vagrant.d/boxes
