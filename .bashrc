# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

## run through the various bash_profiles
if [ -d ~/git/dotfiles/bash_profile/ ]; then
	for f in ~/git/dotfiles/bash_profile/*; do source $f; done
fi
source senf
## setting PSn values has to be the last thing, so this has to be in here.
. ~/git/dotfiles/bash_prompt
