#!/bin/bash

# See https://help.github.com/en/github/developing-online-with-codespaces/personalizing-codespaces-for-your-account

# https://stackoverflow.com/questions/59895/getting-the-source-directory-of-a-bash-script-from-within
dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

"${dir}/restore.sh" --no-scripts
