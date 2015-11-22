#!/bin/bash

if [ -z "$OS" ]; then
  . $(dirname "$0")/../lib/common.sh
fi;

if [ "$OS" != "osx" ]; then exit; fi

if [ "$ISHOST" = true ]; then exit; fi

sudo ~/bin/tccutil.py --insert com.apple.ScriptEditor.id.scale-hdpi
sudo ~/bin/tccutil.py --enable com.apple.ScriptEditor.id.scale-hdpi
