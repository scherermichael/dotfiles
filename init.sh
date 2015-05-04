#!/bin/bash

. ./lib/common.sh

echo "-- Installing software..."

find ./software -name "install.sh" -type f -exec bash -c 'DIR=`dirname {}`; cd $DIR; echo "---- Processing $DIR"; ./install.sh' \;

# Updating the config files
./update.sh
