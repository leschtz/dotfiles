#! /bin/bash

alias make="make -j"
alias makemake="make"
alias cpcmake="cp ~/Templates/c-makefile Makefile"
alias cpem="cp ~/Templates/em-makefile Makefile"
c-setup () 
{
	mcd "$1";
	mkdir src obj include;
	cpcmake;
}

em-setup ()
{
	mcd "$1";
	mkdir src obj include;
	cpem;
}
