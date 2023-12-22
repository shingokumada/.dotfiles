#!/usr/bin/env bash

set -e

cd ~

sudo apt update 
sudo apt install -y vim tmux zsh

ln -s 

### install antigen ###
if [ ! -f ~/.antigen/antigen.zsh ]; then
    curl -L git.io/antigen > ~/.antigen/antigen.zsh
fi

### install vim-plug ###
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

### change login shell to zsh ###
sudo chsh -s "/usr/bin/zsh" "${USER}"
