export PATH=${PATH}:${HOME}/bin:/usr/local/opt/go/libexec/bin

. ~/.bash_aliases

if [ -f "${HOME}/git-completion.sh" ]; then
  . "${HOME}/git-completion.sh"
fi

if [ -f "${HOME}/git-prompt.sh" ]; then
  GIT_PS1_SHOWDIRTYSTATE=true
  GIT_PS1_SHOWUNTRACKEDFILES=true
  GIT_PS1_SHOWUPSTREAM="auto"
  PS1='\u@\h:\w$(__git_ps1) '
  . "${HOME}/git-prompt.sh"
fi

if [ -f "${HOME}/.nvm/nvm.sh" ]; then
  . "${HOME}/.nvm/nvm.sh"
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
