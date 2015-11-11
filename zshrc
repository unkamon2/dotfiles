# Path to your oh-my-zsh installation.
export ZSH=/home/hinza0188/.oh-my-zsh

#oh-my-zsh options
ZSH_THEME="sunrise"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
plugins=(git)


# Ctrl-Z for vim hide/show
foreground-vi() {
  fg %vi
}

zle -N foreground-vi
bindkey '^Z' foreground-vi

# use vim key binding
set -o vi

# Setup color scheme for `ls`
LSCOLORS=exfxcxdxbxegedabagacad
export LSCOLORS

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# run aliases
source ~/.aliases

#run functions
source ~/.functions

#end and start of line
bindkey "^A" begining-of-line
bindkey "^E" end-of-line

# Start screen automatically
[[ ! $TERM =~ "screen" ]] && tmux

export WORKON_HOME=/home/virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
