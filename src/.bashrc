if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# Pipenv, create venv inside project
export PIPENV_VENV_IN_PROJECT=1
export PIPENV_NO_INHERIT=1

# asdf-vm setup
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash
