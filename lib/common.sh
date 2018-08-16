#!/bin/bash

if [ `ps aux | grep vmware-tools | grep -v grep | wc -l` -eq 0 ]; then
  export ISHOST=true
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
