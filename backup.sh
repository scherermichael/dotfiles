#/!bin/bash

. ./lib/common.sh

#pull

COMMENT=$1
if [ -z $COMMENT ]; then
  COMMENT="Update configuration."
fi

echo "Copying files from local system..."
find ./files -type f -exec bash -c '
  source="{}"
  target="${HOME}/${source#./files/}" # Remove common dir of files with $HOME
  targetPath="${target%/*}"           # Path without filename
  mkdir -p "${targetPath}"
  cp -afv "${source}" "${target}"
' \;

echo "Committing changes..."
git add ./files && git commit -m "$COMMENT"

echo "Pushing changes to remote..."
git push
