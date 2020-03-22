#!/bin/bash

SOURCEFORMAT=wma

find . \
  -name "*.$SOURCEFORMAT" \
  -exec vlc -I dummy '{}' --sout='#transcode{acodec=mp3,ab=128,vcodec=dummy}:std{access="file",mux="raw",dst="{}.mp3"}' vlc://quit \;

for file in *.$SOURCEFORMAT.mp3; do mv "$file" "$(basename "$file" .$SOURCEFORMAT.mp3).mp3"; done
