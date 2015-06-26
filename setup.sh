#!/usr/bin/env bash

git submodule init
git submodule update

dotfile_location=`pwd`

rm $HOME/.zshrc
rm $HOME/.aliases
rm $HOME/.functions
rm $HOME/.oh-my-zsh/themes/custom.zsh-theme
rm $HOME/.tmux.conf
rm -rf $HOME/.oh-my-zsh
rm -rf $HOME/.tmuxifier

ln -s $dotfile_location/aliases $HOME/.aliases
ln -s $dotfile_location/functions $HOME/.functions
ln -s $dotfile_location/oh-my-zsh $HOME/.oh-my-zsh
ln -s $dotfile_location/zshrc $HOME/.zshrc
ln -s $dotfile_location/custom $HOME/.oh-my-zsh/themes/custom.zsh-theme
ln -s $dotfile_location/tmux.conf $HOME/.tmux.conf
ln -s $dotfile_location/tmuxifier $HOME/.tmuxifier
