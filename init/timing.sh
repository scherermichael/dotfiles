#!/bin/bash

if [ -z "$OS" ]; then
  . ../lib/common.sh
fi;

if [ "$OS" != "osx" ]; then exit; fi

mkdir -p ~/bin/Timing
wget -O ~/bin/Timing/Timing.app.zip https://timingapp.com/download/Timing.app.zip
unzip ~/bin/Timing/Timing.app.zip
rm ~/bin/Timing/Timing.app.zip
