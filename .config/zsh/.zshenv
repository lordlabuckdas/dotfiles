# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# env variables
export EDITOR=vim
export VISUAL=vim

# lang
export LC_ALL=en_IN.UTF-8

# config
export XDG_CONFIG_HOME=$HOME/.config

# pyenv
export PYENV_ROOT=$HOME/.pyenv

# go
export GOROOT=/usr/lib/go
export GOPATH=$HOME/go

# virtualenv
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_VIRTUALENV=$HOME/.local/bin/virtualenv
source $HOME/.local/bin/virtualenvwrapper.sh

# path
export PATH=$HOME/.pyenv/shims:/usr/local/texlive/2021/bin/x86_64-linux:$HOME/.local/bin:$HOME/.cargo/bin:$HOME/.npm-global/bin:$GOROOT/bin:$GOPATH/bin:$HOME/.pyenv/bin:$PATH
