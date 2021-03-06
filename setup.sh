#!/usr/bin/env bash

git submodule init
git submodule update

dotfile_location=`pwd`

ln -s $dotfile_location/aliases $HOME/.aliases
ln -s $dotfile_location/functions $HOME/.functions
ln -s $dotfile_location/oh-my-zsh $HOME/.oh-my-zsh
ln -s $dotfile_location/zshrc $HOME/.zshrc
ln -s $dotfile_location/vimrc $HOME/.vimrc
ln -s $dotfile_location/tmux.conf $HOME/.tmux.conf
ln -s $dotfile_location/vim $HOME/.vim
