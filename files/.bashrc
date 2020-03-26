source ~/.common-rc

if [ -f ~/git-completion.sh ]; then
  . ~/git-completion.sh
fi

if [ -f ~/git-prompt.sh ]; then
  GIT_PS1_SHOWDIRTYSTATE=true
  GIT_PS1_SHOWUNTRACKEDFILES=true
  GIT_PS1_SHOWUPSTREAM=auto
  PS1='\u@\h:\w $(__git_ps1)
$ '
  . ~/git-prompt.sh
fi
