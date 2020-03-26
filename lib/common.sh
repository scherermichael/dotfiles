#!/bin/bash

# Check for vmware
if pgrep vmware-tools > /dev/null; then
  export IS_VM=true
fi

# Check for virtualbox
if pgrep VBoxService > /dev/null; then
  export IS_VM=true
fi

# See: http://stackoverflow.com/questions/394230/detect-the-os-from-a-bash-script
case $OSTYPE in
  linux*)
    export OS=linux
    ;;
  darwin*)
    export OS=macos
    ;;
  cygwin*)
    export OS=cygwin
    ;;
  msys*)
    export OS=msys
    ;;
  win*)
    export OS=win
    ;;
  freebsd*)
    export OS=freebsd
    ;;
esac
