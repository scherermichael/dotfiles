#/bin/bash

[ -z "${OS}" ] && . ../lib/common.sh

which -s apm || exit;

# Install any package given in `packages.list` (one per line). See: http://stackoverflow.com/questions/10929453/bash-scripting-read-file-line-by-line
if [ -f "installed.list" ]; then
  while read -r plugin
  do
    echo "Installing $plugin"
    apm install "$plugin"
  done < "installed.list"
fi

# Install any package given in `packages.list` (one per line). See: http://stackoverflow.com/questions/10929453/bash-scripting-read-file-line-by-line
if [ -f "disabled.list" ]; then
  while read -r plugin
  do
    echo "Disabling $plugin"
    apm disable "$plugin"
  done < "disabled.list"
fi
