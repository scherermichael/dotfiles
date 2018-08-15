#!/bin/bash

if [ -z "${OS}" ]; then
  . ../../lib/common.sh
fi;

if [ "${OS}" != "macos" ]; then exit; fi

if [ "$ISHOST" = true ]; then exit; fi

# Copy app
cp -rf scale-hdpi.app ~/Desktop

# Allow execution
sudo ./tccutil.py --insert com.apple.ScriptEditor.id.scale-hdpi
sudo ./tccutil.py --enable com.apple.ScriptEditor.id.scale-hdpi
