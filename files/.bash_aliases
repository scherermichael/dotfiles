alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias -- -="cd -"

alias d="docker"
alias dm="docker-machine"
function docker-machine-eval () {
  eval $(docker-machine env $1)
}
alias dme=docker-machine-eval
alias doco="docker-compose"

alias g="git"
alias gti="git"
