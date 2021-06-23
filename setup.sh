#!/usr/bin/env bash
# script: setup.sh
# author: undersfx

# Executar setup do ambiente:
# git clone https://github.com/undersfx/dotfiles.git ~/.dotfiles && chmod +x ~/.dotfiles/setup.sh && bash ~/.dotfiles/setup.sh

# --- Instalçao dos Requisitos

echo "Updating Aptitude"
sudo apt update

echo "Installing Packages"
sudo apt install git curl wget xclip vim tmux htop tilda -y

echo "Installing Dev Packages"
sudo apt install python3-dev -y

# --- Setup chaves SSH

echo "Generating a SSH Key"
ssh-keygen -t ed25519 -C "atchin_@hotmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
echo "Your public key will be sent to your clipboard!"
cat ~/.ssh/id_ed25519.pub | xclip -selection clipboard


# --- Setup do Ambiente (Ubuntu Only)

echo "Ubuntu Setup"

# Instalar extras
sudo apt install ubuntu-restricted-extras libavcodec-extra -y


# --- Instalação e Configuração do ZSH

echo "Installing ZSH Shell"
sudo apt install zsh -y

echo "Installing Oh My ZSH"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Mudar shell padrão para ZSH
runuser -l $(whoami) -c 'chsh -s $(which zsh)'
