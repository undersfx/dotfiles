#!/usr/bin/env bash
# script: setup.sh
# author: undersfx

# --- Instalação e configuração do asdf-vm

# Dependências asdf
# https://asdf-vm.com/#/core-manage-asdf-vm
sudo apt install -y git automake autoconf libreadline-dev libncurses-dev libssl-dev libyaml-dev libxslt-dev libffi-dev libtool unixodbc-dev unzip

# Dependências do plugin Python
# https://github.com/pyenv/pyenv/wiki#suggested-build-environment
sudo apt install -y --no-install-recommends make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget llvm libncurses5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

# Clone do projeto e instalação (necessita restart do shell !)
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0

# Instalar plugin Python
# asdf plugin-add python

# Instalar e configurar versão (necessita restart do shell !)
# asdf install python <version>
# asdf global python <version>
