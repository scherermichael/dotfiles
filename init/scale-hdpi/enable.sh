#!/bin/bash

if [ -z "$OS" ]; then
  . $(dirname "$0")/../../lib/common.sh
fi;

if [ "$OS" != "osx" ]; then exit; fi

if [ "$ISHOST" = true ]; then exit; fi

# Copy app
cp -rf $(dirname "$0")/scale-hdpi.app ~/Desktop

# Allow execution
sudo $(dirname "$0")/tccutil.py --insert com.apple.ScriptEditor.id.scale-hdpi
sudo $(dirname "$0")/tccutil.py --enable com.apple.ScriptEditor.id.scale-hdpi
