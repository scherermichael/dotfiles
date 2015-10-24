#!/bin/bash

. ./lib/common.sh

pull
run_scripts "scripts"
./restore.sh $@
