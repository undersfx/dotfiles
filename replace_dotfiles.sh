#!/usr/bin/env bash
# script: replace_dotfiles.sh
# author: undersfx



# --- Backup e Substituíção dos Arquivos

HOJE=$(date +%d_%m_%Y_%T)

for DOTFILE in $(ls -a ~/dotfiles/src/ | grep -iE '^\.[a-z]'); do 
	if [ -e ~/$DOTFILE ]
	then
		mv ~/$DOTFILE ~/""$DOTFILE"_"$HOJE""
	fi
	cp ~/dotfiles/src/$DOTFILE ~
done
