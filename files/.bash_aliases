alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias -- -="cd -"

alias d="docker"
alias doco="docker-compose"
alias dm="docker-machine"
alias doma="docker-machine"
function dme {
  eval $(docker-machine env $1)
}
function dmuse {
  doma start $1
  dme $1
}

alias g="git"
alias gti="git"
function gitls {
  if [ "$#" -lt 1  ]; then
    dirs="."
  else
    dirs=$*
  fi
  if tput setaf 1 &> /dev/null; then
    tput sgr0
    if [[ $(tput colors) -ge 256 ]] 2>/dev/null; then
      RED=$(tput setaf 1)
      ORANGE=$(tput setaf 172)
      GREEN=$(tput setaf 70)
      PURPLE=$(tput setaf 141)
    else
      GREEN=$(tput setaf 2)
      PURPLE=$(tput setaf 1)

    fi
    BOLD=$(tput bold)
    RESET=$(tput sgr0)
  else
    GREEN="\033[1;32m"
    PURPLE="\033[1;35m"
    BOLD=""
    RESET="\033[m"
  fi

  for d in `find $dirs -name ".git"`; do
    # check if we're in a git repo
    git --git-dir=$d --work-tree=$d/.. rev-parse --is-inside-work-tree &>/dev/null # || return

    # quickest check for what branch we're on
    branch=$(git --git-dir=$d --work-tree=$d/.. symbolic-ref -q HEAD | sed -e 's|^refs/heads/||')

    # check if it's dirty (via github.com/sindresorhus/pure)
    dirty=$(git --git-dir=$d --work-tree=$d/.. diff --quiet --ignore-submodules HEAD &>/dev/null; [ $? -eq 1 ]&& echo -e "*")
    dir=`echo $d | sed -e 's|^\.\/||' -e 's|\/.git||'`
    FOLDER=$GREEN
    BRANCH=$GREEN
    if [ "$branch" != "master" ]; then
      FOLDER=$ORANGE
      BRANCH=$ORANGE
    fi
    if [ "$dirty" = "*" ]; then
      FOLDER=$RED
      BRANCH=$RED
    fi
    echo $RESET$BOLD$FOLDER"$dir$RESET$BOLD on "$BRANCH$branch$dirty$RESET
  done
}
alias gls="gitls"
