## mount
alias mountshares="sudo /usr/local/bin/mountshares"

## misc
alias git-base="git rev-parse --show-toplevel 2> /dev/null"

## mkdir shortcuts
mkcdir() { mkdir "$1" && cd "$1"; }
