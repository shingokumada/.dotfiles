### alias ###
alias vi="nvim"
alias vim="nvim"
alias view="nvim -R"
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

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

### pronpt ###
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

### Node.js ###
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

### Homebrew ###
export PATH="$PATH:/home/linuxbrew/.linuxbrew/bin"

### asdf ###
. /home/linuxbrew/.linuxbrew/opt/asdf/libexec/asdf.sh
