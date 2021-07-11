#!/bin/bash

for id in ${BT_AUTOCONNECT_IDS}; do
  echo "Connecting $id..."
  blueutil --info "${id}"
  blueutil --disconnect "${id}"
  blueutil --pair "${id}"
  blueutil --connect "${id}"
  echo "Done"
done
