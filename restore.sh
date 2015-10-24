#/!bin/bash

. ./lib/common.sh

pull
restore_config "files"
if [ -d private ]; then
  restore_config "private"
fi
