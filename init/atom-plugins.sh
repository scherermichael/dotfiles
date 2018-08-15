#/bin/bash

if [ -z "$OS" ]; then
  . ../lib/common.sh
fi;

if ! which apm; then exit; fi

apm install cucumber
apm install editorconfig
apm install git-log
apm install language-batch
apm install language-docker
apm install language-gherkin
apm install language-hcl
apm install language-powershell
apm install linter
apm install linter-eslint
apm install linter-shellcheck
apm install linter-ui-default
apm install minimap
apm install minimap-git-diff
apm install minimap-selection
apm install pretty-json
apm install react
apm install sort-lines
apm install teletype
apm install theme-switcher
apm install uuidgen
apm install Zen
