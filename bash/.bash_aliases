## mount
alias mountshares="sudo /usr/local/bin/mountshares"

# alert for notifying when long running commands finish. Use like so: ""sleep 10; alert""
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

## misc
alias git-base="git rev-parse --show-toplevel 2> /dev/null"

## mkdir shortcuts
mkcdir() { mkdir "$1" && cd "$1"; }
