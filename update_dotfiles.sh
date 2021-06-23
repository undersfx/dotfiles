#!/usr/bin/env bash
# script: replace_dotfiles.sh
# author: undersfx



# --- Copia e/ou Append dos Arquivos

NOW=$(date +%d_%m_%Y_%T)

for DOTFILE in $(ls -a ~/dotfiles/src/ | grep -iE '^\.[a-z]'); do 
	if [ -e ~/$DOTFILE ]
	then
		cp ~/$DOTFILE ~/""$DOTFILE".bkp."$NOW""
		echo '' >> ~/$DOTFILE
		cat ~/dotfiles/src/$DOTFILE >> ~/$DOTFILE
		echo "$DOTFILE updated."
	else
		cp ~/dotfiles/src/$DOTFILE ~
		echo "$DOTFILE copied."
	fi
done
