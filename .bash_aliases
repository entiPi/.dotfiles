# .bash_aliases
# !! FILE IS MANAGED BY PUPPET !!

err()
{
  echo "Error: $*" >&2
}

recseldir()
{
  worker()
  {
    [ 0 -eq $(find $1/*/ -maxdepht 0 2>/dev/null | wc -l) ] && return;
    select dir in $(basename -a $1/*/); do
      if [ -n "$dir" ] && [ -d "$1/$dir" ]; then
        p="$1/$dir"
        worker "$p"
        break;
      fi
    done
  }

  PS3=">> "
  worker "$1"
  if [ -d "$p" ]; then
    cd "$p"
  else
    err "path selection failed dir=!$p!"
  fi
}

## .dotfiles sync
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

## container
alias lxc-ls="sudo lxc-ls"
alias lxc-info="sudo lxc-info"
alias rlx3-stop-lxc="sudo rlx3-stop-lxc"
alias container='select dir in ~/homes/*; do [ -d "$dir" ] && { export RLX_HOME="$dir"; break; }; done'
alias sim='[ -d "$RLX_HOME" ] && cd $RLX_HOME/Work/simulacrum || err "RLX_HOME not set"'
alias sky='[ -d "$RLX_HOME" ] && $(recseldir $RLX_HOME/Work/skynet) || err "RLX_HOME not set"'
alias ic='[ -d "$RLX_HOME" ] && { dir=$(recseldir $RLX_HOME/InstrumentControls); [ -d "$dir" ] && cd $dir || err "path selection failed"; } || err "RLX_HOME not set"'
alias simd='[ -d "$RLX_HOME" ] && cd $RLX_HOME/simdata || err "RLX_HOME not set"'

## mount
alias mountshares="sudo /usr/local/bin/mountshares"

## misc
alias git-base="git rev-parse --show-toplevel 2> /dev/null"

## mkdir shortcuts
mkcdir() { mkdir "$1" && cd "$1"; }
