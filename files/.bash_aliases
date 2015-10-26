alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias -- -="cd -"

alias d="docker"
alias do="docker"
alias doco="docker-compose"
alias dm="docker-machine"
alias doma="docker-machine"
function dme {
  eval $(docker-machine env $1)
}

alias g="git"
alias gti="git"
