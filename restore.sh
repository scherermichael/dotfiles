#/!bin/bash

. ./lib/common.sh

pull

echo "Copying files to local system..."
find ./${OS}/files -type f -exec bash -c '
 file="{}"
 target="${file#./*/files/}"       # Remove common dir of files
 target="/${target/#~\//${HOME}/}" # Replace leading ~ with home dir of user
 target="${target/#\/\///}"        # Replace leading // with / (neccessary for home dir substitution)
 targetPath="${target%/*}"         # Path without filename
 mkdir -p "${targetPath}"
 cp -afv "${file}" "${target}"
' \;
