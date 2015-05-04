#/!bin/bash

echo "-- Pulling changes from remote..."
git pull

if [ $? != 0 ]; then
  echo "Error pulling from origin. Abort."
  exit 1
fi

echo "Copying config files from local repository..."
# TODO: Copy tracked config files
