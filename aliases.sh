#!/bin/zsh

# alias e='docker run --rm -it -v=$PWD:/src/$(basename $PWD) -w=/src/$(basename $PWD) -v=editor-cache:/root/.cache -v=$HOME/.cargo:/root/.cargo protometa/editor'

dnvim () {
	P=$(echo "${1:-$PWD}"(:A)) # :A expands this to absolute path in zsh

	if   [ -d "${P}" ] # path is dir
	then
		V=$P:/src/$(basename $P)
		W=/src/$(basename $P)
		F="."

	elif [ -f "${P}" ] # path is file
	then
		V=$P:/src/$(basename $P)
		W=/src/
		F=$(basename $P)

	else
		echo "${P} is not valid";
	fi

	docker run --rm -it -v=$V -w=$W -v=editor-cache:/root/.cache -v=$HOME/.cargo:/root/.cargo protometa/editor $F
}

alias ednvim='dnvim ~/src/protometa/editor && docker build ~/src/protometa/editor -t protometa/editor && source ~/src/protometa/editor/aliases.sh'

