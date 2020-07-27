#!/usr/bin/env bash
# script: setup.sh
# author: undersfx

# Executar setup do ambiente:
# git clone https://github.com/undersfx/dotfiles.git ~/.dotfiles && chmod +x ~/.dotfiles/setup.sh && bash ~/.dotfiles/setup.sh

# --- Instalçao dos Requisitos

echo "Updating Aptitude"
sudo apt update

echo "Installing Packages"
sudo apt install git curl wget xclip vim -y


# --- Setup chaves SSH

echo "Generating a SSH Key"
ssh-keygen -t rsa -b 4096 -C "atchin_@hotmail.com"
ssh-add ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub | xclip -selection clipboard


# --- Setup do Ambiente (Ubuntu Only)

echo "Ubuntu Setup"

# Instalar extras
sudo apt install ubuntu-restricted-extras -y


# --- Setup do Ambiente (Gnome Only)

echo "Gnome Setup"

# Instalar gnome tweaks
sudo apt install gnome-tweaks -y

# Instalar GNOME extensions
sudo apt install gnome-shell-extensions chrome-gnome-shell -y

# Ativar extensões:
# Sound Input & Output Device Chooser
# Multimonitor Add-on

# Instalar tema Flat Remix (dark mode com "yaru dark")
# sudo add-apt-repository ppa:daniruiz/flat-remix
# sudo apt update
# sudo apt install flat-remix-gnome


# --- Instalação e Configuração do ZSH

echo "Installing ZSH Shell"
sudo apt install zsh -y

echo "Installing Oh My ZSH"
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# Mudar shell padrão para ZSH
chsh -s $(which zsh)

