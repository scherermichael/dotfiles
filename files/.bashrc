[ -e ~/.linuxbrew/bin/brew ] && eval $(~/.linuxbrew/bin/brew shellenv)
[ -e /home/linuxbrew/.linuxbrew/bin/brew ] && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

source ~/.common-rc

if [ -f ~/.bash_aliases ]; then
  source ~/.bash_aliases
fi

if [ -n "${BREW_PREFIX}" ] && [ -f "$(brew --prefix)/etc/bash_completion.d/password-store" ]; then
  source "$(brew --prefix)/etc/bash_completion.d/password-store"
fi

if [ -f ~/git-completion.sh ]; then
  source ~/git-completion.sh
fi

if [ -f ~/git-prompt.sh ]; then
  GIT_PS1_SHOWDIRTYSTATE=true
  GIT_PS1_SHOWUNTRACKEDFILES=true
  GIT_PS1_SHOWUPSTREAM=auto
  PS1='\u@\h:\w   $(__git_ps1)
$ '
  source ~/git-prompt.sh
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
