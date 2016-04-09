#/!bin/bash

COMMENT=$1

. ./lib/common.sh

pull
backup_config
commit "files" "$COMMENT"
push
