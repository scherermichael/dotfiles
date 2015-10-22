#!/bin/bash

# See: http://stackoverflow.com/questions/394230/detect-the-os-from-a-bash-script

if [[ "$OSTYPE" == "linux-gnu" ]]; then
  OS=linux
elif [[ "$OSTYPE" == "darwin"* ]]; then
  OS=osx
elif [[ "$OSTYPE" == "cygwin" ]]; then
  OS=cygwin
elif [[ "$OSTYPE" == "msys" ]]; then
  OS=msys
elif [[ "$OSTYPE" == "win32" ]]; then
  OS=win
elif [[ "$OSTYPE" == "freebsd"* ]]; then
  OS=freebsd
fi

export OS=$OS

if [ `ps aux | grep vmware-tools | grep -v grep | wc -l` -eq 0 ]; then
  export ISHOST=true
fi

pull () {
  echo "Pulling changes from remote..."
  git pull

  if [ $? != 0 ]; then
    echo "Error pulling from remote. Abort."
    exit 1
  fi
}
