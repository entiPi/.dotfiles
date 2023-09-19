# If not running interactively, don't do anything
[ -z "$PS1" ] && return

## XDG settings{{{
export XDG_CONFIG_HOME=$HOME/.config/
#}}}

## bash history{{{

HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s histappend

# use hosts in HOSTFILE for completion
HOSTFILE=$HOME/.hosts

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize
#}}}

## less{{{
# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# don't write less' search history in file
export LESSHISTFILE=-


# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi
#}}}

## prompt{{{

force_color_prompt=yes
if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

# Simulacrum
__simprompt()
{
  if [ -n "$SIMINSTRUMENT" ]; then
    echo -en " [$SIMINSTRUMENT"
    [ -n "$ICVERSION" ] && echo -n ": $ICVERSION"
    echo -en "]"
  fi
}

# abbreviate various "home" directories
__dir()
{
  d=$PWD
  d=${d/"/home/tm"/"~"}
  d=${d/"/home/thomas"/"~"}
  d=${d/"/home/meistet3"/"~"}
  d=${d/"/home/users/meistet3"/"~"}
  d=${d/"~/homes"/"≈"}
  echo -n "$d"
}

# the actual prompt
if [ "$color_prompt" = yes ]; then
  PS1='${debian_chroot:+($debian_chroot)}\[\033[00m\]\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]$(__dir)\[\033[00m\]\[\033[0;33m\]$(__simprompt)\[\033[00m\]\[\033[0;36m\]$(__git_ps1)\[\033[00m\]\$ '
else
  PS1='${debian_chroot:+($debian_chroot)}\u@\h:$(__dir)$(__simprompt)$(__git_ps1)\$ '
fi
unset color_prompt force_color_prompt
#}}}

## ls and grep{{{

# colour support
if [ -x /usr/bin/dircolors ]; then
    if test -r ~/.dircolors; then
        eval "$(dircolors -b ~/.dircolors)"
    else
        eval "$(dircolors -b)"
    fi
    alias ls='ls -p --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# format
alias ll='ls -halF --time-style=long-iso'
alias la='ls -Ah --time-style=long-iso'
#}}}

## ipython{{{
export IPYTHONDIR=~/.config/ipython
#}}}

## completion{{{

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
      . /usr/share/bash-completion/bash_completion
  fi
  if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
#}}}

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

## asdf{{{
## dependency installer for various languages
. /opt/asdf/asdf.sh
. /opt/asdf/completions/asdf.bash
#}}}
