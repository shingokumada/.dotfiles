#!/usr/bin/env bash

# Abort the program if an error occurs during script execution.
set -e

cd ~

sudo apt update 
sudo apt install -y vim stow tmux zsh

stow -R -v -d ~/.dotfiles/packages -t ~ neovim tmux zsh

### install antigen ###
if [ ! -f ~/.antigen/antigen.zsh ]; then
    curl -L git.io/antigen > ~/.antigen/antigen.zsh
fi

### install vim-plug ###
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

### change login shell to zsh ###
sudo chsh -s "/usr/bin/zsh" "${USER}"
