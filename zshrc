# Path to your oh-my-zsh installation.
# Uncomment this line for Mac OSX
export ZSH=/Users/jayan/.oh-my-zsh
# Uncomment this line for Ubuntu
#export ZSH=/home/yka8247/.oh-my-zsh


#oh-my-zsh options
ZSH_THEME="clean"
COMPLETION_WAITING_DOTS="true"
DEFAULT_USER="whoami"
DISABLE_UNTRACKED_FILES_DIRTY="true"
plugins=(git)


# Ctrl-Z for vim hide/show
foreground-vi() {
  fg %vi
}

zle -N foreground-vi
bindkey '^Z' foreground-vi

# ignoring insecure directory verification
set ZSH_DISABLE_COMPFIX=true
# use vim key binding
set -o vi

# Setup color scheme for `ls`
LSCOLORS=exfxcxdxbxegedabagacad
export LSCOLORS

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"

# python export from homebrew
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
# python@2 for mac
export PATH="/usr/local/opt/python@2/bin:$PATH"

# php export from homebrew
export PATH="/usr/local/opt/openssl/bin:$PATH"

# laravel excecutable locator
export PATH="$PATH:$HOME/.composer/vendor/bin"

source $ZSH/oh-my-zsh.sh

# run aliases
source ~/.aliases

#run functions
source ~/.functions

#end and start of line
bindkey "^A" begining-of-line
bindkey "^E" end-of-line

# Start screen automatically
# [[ ! $TERM =~ "screen" ]] && tmux

# set where virutal environments will live
export WORKON_HOME=$HOME/.virtualenvs
# ensure all new environments are isolated from the site-packages directory
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
# use the same directory for virtualenvs as virtualenvwrapper
export PIP_VIRTUALENV_BASE=$WORKON_HOME
# makes pip detect an active virtualenv and install to it
export PIP_RESPECT_VIRTUALENV=true
if [[ -r /usr/local/bin/virtualenvwrapper.sh ]]; then
    source /usr/local/bin/virtualenvwrapper.sh
else
    echo "WARNING: Can't find virtualenvwrapper.sh"
fi
source /usr/local/bin/virtualenvwrapper.sh
