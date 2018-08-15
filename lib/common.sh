#!/bin/bash

if [ `ps aux | grep vmware-tools | grep -v grep | wc -l` -eq 0 ]; then
  export ISHOST=true
fi

# See: http://stackoverflow.com/questions/394230/detect-the-os-from-a-bash-script
if [[ "$OSTYPE" == "linux-gnu" ]]; then
  export OS=linux
elif [[ "$OSTYPE" == "darwin"* ]]; then
  export OS=macos
elif [[ "$OSTYPE" == "cygwin" ]]; then
  export OS=cygwin
elif [[ "$OSTYPE" == "msys" ]]; then
  export OS=msys
elif [[ "$OSTYPE" == "win32" ]]; then
  export OS=win
elif [[ "$OSTYPE" == "freebsd"* ]]; then
  export OS=freebsd
fi

pull () {
  echo "Pulling changes from remote..."
  if ! git pull; then
    echo "Error pulling from remote. Abort."
    exit 1
  fi
}

commit () {
  ADDPATH="$1"
  COMMENT="$2"
  if [ -z "$COMMENT" ]; then
    COMMENT="Update configuration."
  fi

  echo "Committing changes in '$ADDPATH'..."
  git add -A "./$ADDPATH"

  if ! (git diff --quiet --exit-code --cached || git commit -m "$COMMENT"); then
    echo "Error committing changes. Abort."
    exit 1
  fi
}

push () {
  echo "Pushing to remote..."

  if ! git push; then
    echo "Error pushing to remote. Abort."
    exit 1
  fi
}

backup_config () {
  echo "Backing up config files in 'files'..."
  find "./files" -type f -exec bash -c '
    target="{}"
    source="$HOME/${target#./files/}" # Replace common dir of files with $HOME
    cp -afv "$source" "$target"
  ' \;

  if [ $? != 0 ]; then
    echo "Error creating backup. Abort."
    exit 1
  fi
}

restore_config () {
  echo "Restoring config files in 'files'..."
  find "./files" -type f -exec bash -c '
    file="{}"
    target="${file#./files}"       # Remove common dir of files
    targetPath="${target%/*}"      # Path without filename
    mkdir -p "$HOME$targetPath"
    cp -afv "$file" "$HOME$target"
  ' \;

  if [ $? != 0 ]; then
    echo "Error restoring files. Abort."
    exit 1
  fi
}

run_scripts () {
  echo "Executing scripts in 'init'..."
  find -s "./init" -name '*.sh' -type f -exec bash -c '
    if [ -x "{}" ]; then
      echo "{}"
      cd "$(dirname {})"
      "./$(basename {})"
    fi
  ' \;

  if [ $? != 0 ]; then
    echo "Error running scripts. Abort."
    exit 1
  fi
}

source_env () {
  echo "Sourcing private environment variables..."
  if [ -f "/vagrant/private/environment" ]; then
    . "/vagrant/private/environment"
  fi

  if [ -f "~/dotfiles/private/environment" ]; then
    . "~/dotfiles/private/environment"
  fi
}
