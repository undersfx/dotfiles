#!/usr/bin/env bash
# script: setup.sh
# autor: undersfx

# Executar setup do ambiente:
# git clone https://github.com/undersfx/dotfiles.git ~/.dotfiles && chmod +x ~/.dotfiles/setup.sh && bash ~/.dotfiles/setup.sh



# --- Instalçao dos Requisitos

# Atualizar Repositórios
sudo apt update

# Instalar Programaas
sudo apt install git curl zsh xclip vim -y



# --- Instalação e Configuração do ZSH

# Mudar shell padrão para ZSH
chsh -s $(which zsh)

# Instalar Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Fonte necessária para o Spaceship Promp e Agnoster
sudo apt install fonts-powerline

# Instalar tema Spaceship Promp
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Instalar ZPlugin
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zplugin/master/doc/install.sh)"



# --- backup e Atualuzação dos Arquivos

HOJE=$(date +%d_%m_%Y)
for DOTFILE in $(ls -a ~/.dotfiles/ | grep -iE '^\.[a-z]'); do 
	if [ ! -e ~/$DOTFILE ]
	then
		mv ~/$DOTFILE ~/""$DOTFILE"_"$HOJE""
	fi
	cp ~/.dotfiles/$DOTFILE ~
done



# --- Instalação e configuração do asdf-vm
# https://asdf-vm.com/#/core-manage-asdf-vm

# Dependências asdf
sudo apt install git automake autoconf libreadline-dev libncurses-dev libssl-dev libyaml-dev libxslt-dev libffi-dev libtool unixodbc-dev unzip

# Clone do projeto e instalação (necessita restart do shell !)
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.5

# Dependências do plugin Python
# https://github.com/pyenv/pyenv/wiki#suggested-build-environment
sudo apt-get install --no-install-recommends make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget llvm libncurses5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

# Instalar plugin Python
asdf plugin-add python

# Instalar e configurar versão (necessita restart do shell !)
asdf install python 3.8.1
asdf global python 3.8.1



# --- Setup do Ambiente (Ubuntu Only)

# Instalar extras
sudo apt install ubuntu-restricted-extras



# --- Setup do Ambiente (Gnome Only)

# Instalar gnome tweaks
sudo apt install gnome-tweak

# Instalar GNOME extensions
sudo apt install gnome-shell-extensions chrome-gnome-shell

# Ativar extensões:
# Sound Input & Output Device Chooser
# Multimonitor Add-on

# Instalar tema Flat Remix (dark mode com "yaru dark")
sudo add-apt-repository ppa:daniruiz/flat-remix
sudo apt update
sudo apt install flat-remix-gnome
