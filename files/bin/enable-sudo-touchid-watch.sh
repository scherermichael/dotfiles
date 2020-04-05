#!/bin/bash

if grep "pam_watchid.so" -q /etc/pam.d/sudo; then
  echo "PAM modules are already installed."
  exit 0
fi

echo "Moving pam_watchid.so to destination path..."
# Taken from Makefile
VERSION=2
LIBRARY_NAME=pam_watchid.so
DESTINATION=/usr/local/lib/pam
sudo mkdir -p ${DESTINATION}
sudo cp ${LIBRARY_NAME} ${DESTINATION}/${LIBRARY_NAME}.${VERSION}
sudo chmod 444 ${DESTINATION}/${LIBRARY_NAME}.${VERSION}
sudo chown root:wheel ${DESTINATION}/${LIBRARY_NAME}.${VERSION}

echo "Patching /etc/pam.d/sudo ..."
sudo sed -i '' '1a\
auth       sufficient     pam_watchid.so "reason=execute a command as root"\
auth       sufficient     pam_tid.so
' /etc/pam.d/sudo

echo "PAM modules installed. Please open a new shell."
