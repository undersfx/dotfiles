#!/usr/bin/env zsh
# script: zsh_setup.sh
# author: undersfx


# Fonte requisito para themas Spaceship Promp e Agnoster
echo "Instaling dependencies"
sudo apt install -y fonts-powerline

# Instalar tema Spaceship Promp
echo "Instaling Spaceship Promp"
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
