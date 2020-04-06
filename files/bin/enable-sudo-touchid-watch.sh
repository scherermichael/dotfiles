#!/bin/bash

set -e

# https://stackoverflow.com/questions/59895/getting-the-source-directory-of-a-bash-script-from-within
dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

if [[ $UID -ne 0 ]]; then
   echo "This script must be run as root."
   exit 1
fi

if grep "pam_watchid.so" -q /etc/pam.d/sudo; then
  echo "PAM modules are already installed."
  exit 0
fi

echo "Moving pam_watchid.so to destination path..."
# Taken from Makefile
VERSION=2
LIBRARY_NAME=pam_watchid.so
DESTINATION=/usr/local/lib/pam
mkdir -p ${DESTINATION}
cp "${dir}/${LIBRARY_NAME}" ${DESTINATION}/${LIBRARY_NAME}.${VERSION}
chmod 444 ${DESTINATION}/${LIBRARY_NAME}.${VERSION}
chown root:wheel ${DESTINATION}/${LIBRARY_NAME}.${VERSION}

echo "Patching /etc/pam.d/sudo ..."
cp /etc/pam.d/sudo /etc/pam.d/sudo.bak
sed -i '' '1a\
auth       sufficient     pam_watchid.so "reason=execute a command as root"\
auth       sufficient     pam_tid.so
' /etc/pam.d/sudo

echo "PAM modules installed:"
echo "------------------------------------------------------"
cat /etc/pam.d/sudo
echo "------------------------------------------------------"
echo ""
echo "Please open a new shell and try the new mechanism e.g. with: sudo whoami"
echo "After verifying that the modification works, type 'y' to keep it."
echo "Any other key will restore the original config."
echo "Press any key..."

read -rsn1 input
if [ "$input" != "y" ]; then
  echo "Rolling back changes..."
  mv /etc/pam.d/sudo.bak /etc/pam.d/sudo
fi

echo "Done."
