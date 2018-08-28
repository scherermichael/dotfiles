#!/usr/bin/env bash

# BitBar lid status plugin

isOpen=$(ioreg -r -k AppleClamshellState -d 4 | \
  grep AppleClamshellState | \
  head -1 | \
  cut -d = -f 2)

color="white"

if [ "${isOpen}" == "no" ]; then
  result="💻✓"
  color="green"
else
  if netstat -an | grep .5900 | grep -q ESTABLISHED; then
    result="✘💻✘"
    color="red"
  else
    result="💻"
  fi
fi

echo "${result}|color=${color}"
echo "---"
echo "Refresh | refresh=true"
