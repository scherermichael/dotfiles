#!/bin/bash

set -e

if [ -e "/opt/homebrew/sbin/sleepwatcher" ]; then
  brew services restart sleepwatcher
fi
