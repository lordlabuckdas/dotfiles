# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# vars
VERSION=v14.16.1
DISTRO=linux-x64

# env variables
export EDITOR=vim
export VISUAL=vim
# lang
export LC_ALL=en_IN.UTF-8
export LANG=en_IN.UTF-8
# config
export XDG_CONFIG_HOME=$HOME/.config
# pyenv
export PYENV_ROOT=$HOME/.pyenv
# go
export GOPATH=$HOME/go
export GOROOT=/usr/local/go

# virtualenv
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_VIRTUALENV=$HOME/.local/bin/virtualenv
source $HOME/.local/bin/virtualenvwrapper.sh

# path
export PATH=/usr/local/lib/nodejs/node-$VERSION-$DISTRO/bin:$HOME/.npm-global/bin:$HOME/.cargo/bin:$HOME/.pyenv/bin:$GOPATH/bin:$GOROOT/bin:$PATH
