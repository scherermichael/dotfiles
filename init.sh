#!/bin/bash

. ./lib/common.sh

pull
run_scripts "init"
./restore.sh $@
