# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="dracula"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# plugins
plugins=(git docker zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

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
# nnn
export NNN_PLUG='c:fzcd;o:fzopen;h:fzhist'
# export NNN_OPTS="deH"
export NNN_BMS='p:~/Desktop/pd/'
export NNN_OPENER=$XDG_CONFIG_HOME/nnn/plugins/nuke
export NNN_FIFO='/tmp/nnn.fifo'
export LC_COLLATE="C"

# virtualenv
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_VIRTUALENV=$HOME/.local/bin/virtualenv
source $HOME/.local/bin/virtualenvwrapper.sh

# path
export PATH=/usr/local/lib/nodejs/node-$VERSION-$DISTRO/bin:$HOME/.npm-global/bin:$HOME/.pyenv/bin:$GOPATH/bin:$GOROOT/bin:$PATH

# pyenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# tmux
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
    exec tmux
fi

# aliases
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

# fzf
export FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden'
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}"/fzf/fzf.zsh ] && source "${XDG_CONFIG_HOME:-$HOME/.config}"/fzf/fzf.zsh
