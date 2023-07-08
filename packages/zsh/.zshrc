### alias ###
alias vi="nvim"
alias vim="nvim"
alias view="nvim -R"
alias gitconf="vim ~/.gitconfig"
alias tmuxconf="vim ~/.tmux.conf"
alias vimconf="vim ~/.config/nvim/init.vim"
alias zshpro="vim ~/.zprofile"
alias zshconf="vim ~/.zshrc"

### Zsh ###
setopt no_beep
setopt auto_pushd
setopt pushd_ignore_dups
setopt share_history
setopt inc_append_history

# Path to your oh-my-zsh installation.
export HISTFILE=/.zsh_history
export HISTSIZE=100000
export SAVEHIST=100000

# pronpt
PROMPT='%c %#'

### antigen ###
source ~/.antigen/antigen.zsh
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

# Load the theme.
antigen theme robbyrussell
antigen apply

### volta ###
export PATH="$PATH:/home/linuxbrew/.linuxbrew/bin/volta"

### Homebrew ###
export PATH="$PATH:/home/linuxbrew/.linuxbrew/bin"

### asdf ###
. /home/linuxbrew/.linuxbrew/opt/asdf/libexec/asdf.sh

### bin ###
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:$HOME/bin/build"
