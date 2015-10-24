#/!bin/bash

. ./lib/common.sh

pull

echo "Copying files to local system..."
find ./files -type f -exec bash -c '
  file="{}"
  target="${file#./files}"       # Remove common dir of files
  targetPath="${target%/*}"      # Path without filename
  mkdir -p "$HOME$targetPath"
  cp -afv "$file" "$HOME$target"
' \;
