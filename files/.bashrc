if [ -f "/vagrant/private/environment" ]; then
  . "/vagrant/private/environment"
fi

if [ -f ~/dotfiles/private/environment ]; then
  . ~/dotfiles/private/environment
fi

if [ -f ~/git-completion.sh ]; then
  . ~/git-completion.sh
fi

if [ -f ~/git-prompt.sh ]; then
  GIT_PS1_SHOWDIRTYSTATE=true
  GIT_PS1_SHOWUNTRACKEDFILES=true
  GIT_PS1_SHOWUPSTREAM=auto
  PS1='\u@\h:\w$(__git_ps1) '
  . ~/git-prompt.sh
fi

if [ -f ~/.nvm/nvm.sh ]; then
  . ~/.nvm/nvm.sh
fi

if [ -f "$(brew --prefix)/etc/profile.d/z.sh" ]; then
  . "$(brew --prefix)/etc/profile.d/z.sh"
fi

if [ -f "$(brew --prefix)/etc/bash_completion.d/password-store" ]; then
  . "$(brew --prefix)/etc/bash_completion.d/password-store"
fi

if [ -f /usr/local/bin/docker-machine ]; then
  eval $(docker-machine env dev)
fi

if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi
