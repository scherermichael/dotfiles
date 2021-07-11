#!/bin/bash

# Peripheral devices must be paired or on the favourites list and their name must end with "Keyboard" or "Trackpad"

KEYBOARD_ADDRESS=$(blueutil --paired --format json | jq -r '.[] | select(.name | endswith("Keyboard")) | .address')
[ -n "${KEYBOARD_ADDRESS}" ] || KEYBOARD_ADDRESS=$(blueutil --favourites --format json | jq -r '.[] | select(.name | endswith("Keyboard")) | .address')

TRACKPAD_ADDRESS=$(blueutil --paired --format json | jq -r '.[] | select(.name | endswith("Trackpad")) | .address')
[ -n "${TRACKPAD_ADDRESS}" ] || TRACKPAD_ADDRESS=$(blueutil --favourites --format json | jq -r '.[] | select(.name | endswith("Trackpad")) | .address')

if [ -z "${KEYBOARD_ADDRESS}" ]; then
  echo "Error: Keyboard not found in list of favourite or paired devices."
  echo "Use \`binutil --add-favourite <Bluetooth-ID>\` to mark it as a favourite device."
  exit 1
fi

if [ -z "${TRACKPAD_ADDRESS}" ]; then
  echo "Error: Trackpad not found in list of favourite or paired devices."
  echo "Use \`binutil --add-favourite <Bluetooth-ID>\` to mark it as a favourite device."
  exit 1
fi

echo blueutil --pair "${KEYBOARD_ADDRESS}"
echo blueutil --pair "${TRACKPAD_ADDRESS}"
