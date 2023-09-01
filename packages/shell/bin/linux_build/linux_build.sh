#!/usr/bin/env bash

# Abort the program if an error occurs during script execution.
set -e

cd ~

sudo apt update 
sudo apt -y install build-essential curl dirmngr file gawk git gpg stow procps

if [ ! -d ~/.dotfiles ]; then
    git clone https://github.com/shingo-kumada/.dotfiles.git
fi

### install linuxbrew ###
if [ ! -f /home/linuxbrew/.linuxbrew/bin/brew ]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Add Homebrew to bash shell profile script.
if [ ! -f ~/.bash_profile ]; then
    touch ~/.bash_profile
fi
test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
test -r ~/.bash_profile && echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >>~/.bash_profile
echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >>~/.profile

brew bundle -v --file=~/.dotfiles/packages/shell/bin/linux_build/Brewfile

stow -R -v -d ~/.dotfiles/packages -t ~ asdf git neovim shell tmux zsh

### install antigen ###
if [ ! -f ~/.antigen/antigen.zsh ]; then
    curl -L git.io/antigen > ~/.antigen/antigen.zsh
fi

### change login shell to zsh ###
cat /etc/shells | grep /home/linuxbrew/.linuxbrew/bin/zsh || command -v zsh | sudo tee -a /etc/shells
sudo chsh -s "$(command -v zsh)" "${USER}"
