#!/bin/bash

[ -z "${OS}" ] && . ../../lib/common.sh

[ "${OS}" == "macos" ] || exit

# App Store packages

# Install new packages
if [ -f "packages.list" ]; then
  while read -r package
  do
    id=$(echo "${package}" | cut -d ' ' -f1)
    name=$(echo "${package}" | cut -d ' ' -f3)
    echo "Installing package ${name} (${id})..."
    mas install "${id}"
  done < packages.list
fi
