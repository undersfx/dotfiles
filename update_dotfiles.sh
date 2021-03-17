#!/usr/bin/env bash
# script: replace_dotfiles.sh
# author: undersfx



# --- Backup e Substituíção dos Arquivos

NOW=$(date +%d_%m_%Y_%T)

for DOTFILE in $(ls -a ~/dotfiles/src/ | grep -iE '^\.[a-z]'); do 
	if [ -e ~/$DOTFILE ]
	then
		#mv ~/$DOTFILE ~/""$DOTFILE"_"$NOW""
		echo $'\n' >> ~/$DOTFILE
		echo "# - - - Config updated at: $NOW - - -" >> ~/$DOTFILE
		echo ~/dotfiles/src/$DOTFILE >> ~/$DOTFILE
	else
		cp ~/dotfiles/src/$DOTFILE ~
	fi
done
