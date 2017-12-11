#! /bin/bash

export VISUAL=nano
export EDITOR=nano
export PROMPT_COMMAND='history -a'
export WORKON_HOME=$HOME/.virtualenvs

#source /usr/bin/virtualenvwrapper.sh

## GENERAL ALIASES
alias ls="ls --color=auto"
alias la="ls -a --color=auto"
alias lla="ls -al --color=auto"

alias pwd="printf \"L: \"; pwd -L; printf \"P: \"; pwd -P"

### alias for CoW FS
#alias cp="cp --re"

### DIRECTORY CHANGE
alias g="cd ~/git/"
alias usb="cd /run/media/$USER"

### NETWORK
alias won="wifi on"
alias wof="wifi off"
alias pcing="ping -c4"

if [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
fi

## GENERAL FUNCTIONS
mcd ()
{
	mkdir -p "$1" && cd "$1"
}

ydl ()
{
	export now=$(date '+%d-%m-%Y')
	mcd $HOME/Music/$now
	youtube-dl --extract-audio --audio-format mp3 --audio-quality 0 $1
	cd
}

md ()
{
        pandoc -s -f markdown -t man "$*" | man -l -;
}

pdf ()
{
        xdg-open $1 &>/dev/null
}
