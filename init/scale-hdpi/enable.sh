#!/bin/bash

[ -z "${OS}" ] && . ../../lib/common.sh

[ "${OS}" == "macos" ] || exit

[ "$ISHOST" = true ] && exit

# Copy app
cp -rf scale-hdpi.app ~/Desktop

# Allow execution
sudo ./tccutil.py --insert com.apple.ScriptEditor.id.scale-hdpi
sudo ./tccutil.py --enable com.apple.ScriptEditor.id.scale-hdpi
