#!/bin/bash
if [ -z "${BT_AUTOCONNECT_IDS}" ]; then
  echo "Error: No ids of devices to connect found."
  exit 1
fi

for id in ${BT_AUTOCONNECT_IDS}; do
  echo "- Connecting $id..."
  while true; do
    blueutil --info "${id}"
    blueutil --disconnect "${id}" >/dev/null 2>&1
    blueutil --pair "${id}" 0000
    blueutil --connect "${id}"

    if [ "$(blueutil --is-connected "${id}")" = "1" ]; then
      break
    fi

    echo "- Attempt failed. Retrying..."
  done
  echo "- Done"
done

echo "All devices connected."
