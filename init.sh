#!/bin/bash

. ./lib/common.sh

pull
source_env
run_scripts
restore_config
