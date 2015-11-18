export PATH=${PATH}:${HOME}/bin:/usr/local/opt/go/libexec/bin

. ~/.bash_aliases

if [ -f "${HOME}/git-completion.sh" ]; then
  . "${HOME}/git-completion.sh"
fi

if [ -f "${HOME}/git-prompt.sh" ]; then
  GIT_PS1_SHOWDIRTYSTATE=true
  GIT_PS1_SHOWUNTRACKEDFILES=true
  GIT_PS1_SHOWUPSTREAM="auto"
  PROMPT_COMMAND='__git_ps1 "\u@\h:\w" "\$ "'
  . "${HOME}/git-prompt.sh"
fi

if [ -f "$(brew --prefix nvm)/nvm.sh" ]; then
  export NVM_DIR=~/.nvm
  . "$(brew --prefix nvm)/nvm.sh"
fi

if [ -f "$(brew --prefix)/etc/profile.d/z.sh" ]; then
  . "$(brew --prefix)/etc/profile.d/z.sh"
fi

if [ -f "$(brew --prefix)/etc/bash_completion.d/password-store" ]; then
  . "$(brew --prefix)/etc/bash_completion.d/password-store"
fi

if [ -f "/usr/local/bin/docker-machine" ]; then
  eval $(docker-machine env dev)
fi
