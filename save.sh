#/!bin/bash

COMMENT=$1
if [ -z $COMMENT ]; then
  COMMENT="Update configuration."
fi

echo "-- Pulling changes from remote..."
git pull

if [ $? != 0 ]; then
  echo "Error pulling from origin. Abort."
  exit 1
fi

echo "Copying config files to local repository..."
# TODO: Copy tracked config files

echo "-- Committing and pushing changes..."
git add userconfig && git commit -m "$COMMENT" && git push
