#!/bin/bash

for id in ${BT_AUTOCONNECT_IDS}; do
  echo "Connecting $id..."
  blueutil --info "${id}"
  blueutil --disconnect "${id}" >/dev/null 2>&1
  blueutil --pair "${id}" 0000
  blueutil --connect "${id}"
  echo "Done"
done
