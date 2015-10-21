#!/bin/bash

. ./lib/common.sh

pull

echo "Run init scripts..."
find -s ./scripts -name '*.sh' -type f -exec bash -c '
  if [ -x "{}" ]; then
    echo "{}"
    cd "$(dirname {})"
    "./$(basename {})"
  fi
' \;

echo "Restore configuration..."
./restore.sh $1
