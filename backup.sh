#/!bin/bash

. ./lib/common.sh

pull

COMMENT=$1
if [ -z $COMMENT ]; then
  COMMENT="Update configuration."
fi

echo "Copying files from local system..."
find ./${OS}/files -type f -exec bash -c '
 file="{}"
 source="${file#./*/files/}"       # Remove common dir of files
 source="/${source/#~\//${HOME}/}" # Replace leading ~ with home dir of user
 source="${source/#\/\///}"        # Replace leading // with / (neccessary for home dir substitution)
 sourcePath="${source%/*}"         # Path without filename
 mkdir -p "${sourcePath}"
 cp -afv "${source}" "${file}"
' \;

echo "Committing changes..."
git add ${OS}/files && git commit -m "$COMMENT"

echo "Pushing changes to remote..."
git push
