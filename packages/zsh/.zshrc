### alias ###
alias brew='env PATH="${PATH//$(pyenv root)\/shims:/}" brew'
alias gitconf="vim ~/.gitconfig"
alias vi="nvim"
alias vim="nvim"
alias view="nvim -R"
alias vimconf="vim ~/.config/nvim/init.vim"
alias tmuxconf="vim ~/.tmux.conf"
alias zshpro="vim ~/.zprofile"
alias zshconf="vim ~/.zshrc"

### Zsh ###
setopt auto_pushd
setopt auto_cd
setopt hist_ignore_dups
setopt inc_append_history
setopt no_beep
setopt pushd_ignore_dups
setopt share_history

# Path to your oh-my-zsh installation.
export HISTFILE=$HOME/.zsh_history
export HISTSIZE=100000
export SAVEHIST=100000

# pronpt
PROMPT='%c %#'

### antigen ###
source ~/.antigen/antigen.zsh
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle command-not-found
antigen bundle git
antigen bundle python
antigen bundle pip
antigen bundle web-serach

# Syntax highlighting bundle.
antigen bundle sobolevn/wakatime-zsh-plugin
antigen bundle unixorn/fzf-zsh-plugin@main
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

# Load the theme.
antigen theme robbyrussell
antigen apply

### volta ###
export VOLTA_HOME="$HOME/.volta"
export PATH="$PATH:$VOLTA_HOME/bin"

### Homebrew ###
export PATH="$PATH:/home/linuxbrew/.linuxbrew/bin"

### asdf ###
. /home/linuxbrew/.linuxbrew/opt/asdf/libexec/asdf.sh

### bin ###
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:$HOME/bin/build"

### pyenv ###
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
