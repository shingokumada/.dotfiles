#!/usr/bin/env bash

# Abort the program if an error occurs during script execution
set -e

cd ~

### Homebrew install ###
if [ ! -f /usr/local/bin/brew ]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew bundle -v --file=~/.dotfiles/packages/shell/bin/mac_build/Brewfile

stow -R -v -d ~/.dotfiles/packages -t ~ asdf git neovim shell tmux zsh

### change login shell to zsh ###
chsh -s "$(command -v zsh)" "${USER}"
