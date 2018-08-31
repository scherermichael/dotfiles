#!/usr/bin/env bash

# BitBar lid state plugin

isClosed=$(ioreg -r -k AppleClamshellState -d 4 | \
  grep AppleClamshellState | \
  head -1)
result="💻"

if [[ "${isClosed}" =~ "Yes" ]]; then
  result="💻✓|color=green"
else
  if netstat -an | grep '.5900 ' | grep -q ESTABLISHED; then
    result="✘💻✘|color=red"
  fi
fi

echo "${result}"
echo "---"
echo "Refresh | refresh=true"
