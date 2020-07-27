#!/usr/bin/env zsh
# script: zsh_setup.sh
# author: undersfx


# Fonte requisito para themas Spaceship Promp e Agnoster
sudo apt install fonts-powerline -y

# Instalar tema Spaceship Promp
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Instalar ZPlugin
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zplugin/master/doc/install.sh)"



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
