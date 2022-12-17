#!/bin/zsh

set -e

# https://stackoverflow.com/questions/59895/getting-the-source-directory-of-a-bash-script-from-within
# Modified for zsh
dir="$( cd "$( dirname "${(%):-%N}" )" >/dev/null && pwd )"

if [[ $UID -ne 0 ]]; then
   echo "This script must be run as root."
   exit 1
fi

if grep "pam_tid.so" -q /etc/pam.d/sudo; then
  echo "PAM module is already activated."
  exit 0
fi

echo "Creating backup of /etc/pam.d/sudo ..."
cp /etc/pam.d/sudo /etc/pam.d/sudo.bak

arch="$(uname -p)"

echo "Patching /etc/pam.d/sudo ..."
sudo sed -i '' '1a\
auth       sufficient     pam_tid.so
' /etc/pam.d/sudo

echo ""
echo "Testing sudo..."
if ! sudo -k whoami > /dev/null; then
  echo ""
  echo "Rolling back changes..."
  cp /etc/pam.d/sudo.bak /etc/pam.d/sudo
  echo "Rollback finished."
  exit 1
fi

echo ""
echo "Done."
