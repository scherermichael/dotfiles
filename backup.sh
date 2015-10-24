#/!bin/bash

COMMENT=$1

. ./lib/common.sh

#pull
backup_config "files"
backup_config "private"
commit "files" "$COMMENT"
push
