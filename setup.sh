#!/usr/bin/env bash

git submodule init
git submodule update

dotfile_location=`pwd`

ln -s $dotfile_location/aliases $HOME/.aliases
ln -s $dotfile_location/functions $HOME/.functions
ln -s $dotfile_location/zshrc $HOME/.zshrc
