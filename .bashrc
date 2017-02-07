#
# ~/.bashrc
#

#PS1='\u@\h [\W]\$ '
export PS1="\[$(tput setaf 6)\]┌─ \[$(tput bold)\]\[$(tput setaf 6)\]\A \[$(tput setaf 2)\]\[$(tput setaf 3)\]\u\[$(tput setaf 1)\]@\[$(tput setaf 3)\]\h \[$(tput setaf 6)\][ \w ]\[$(tput setaf 2)\]\[$(tput setaf 4)\] \n\[$(tput setaf 6)\]└──► \$ \[$(tput sgr0)\]"
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

if [ -x /usr/bin/mint-fortune ]; then
     /usr/bin/mint-fortune
fi

# Map Ctrl-S to sth usefull other than XOFF (interrupt data flow).
stty -ixon

# mutt background fix
COLORFGBG="default;default"

# Welcome
# fortune -s -o | cowsay -f small
mailcheck

# Aliases
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias ls='ls --color=auto'
alias l='ls -lah --color=auto'
alias edae='GTK_THEME=Adwaita:dark emacs --daemon'
alias e='emacsclient -t'
alias eg='emacsclient -c'

alias pacman='pacman --color auto'

# Variables
export VISUAL='emacsclient -a "" -t'
export EDITOR="$VISUAL"
