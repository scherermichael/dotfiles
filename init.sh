#!/bin/bash

. ./lib/common.sh

pull
run_scripts "init-pre"
./restore.sh $@
run_scripts "init-post"
