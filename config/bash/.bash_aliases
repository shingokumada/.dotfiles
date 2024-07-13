source "$HOME"/.dotfiles/lib/path.sh
source "$HOME"/.dotfiles/lib/packages.sh

alias check='shellcheck'
alias cl='clear'
alias relogin='exec $SHELL -l'
alias vi='nvim'

### add path manage ###
PATH="$PATH:$HOME/.dotfiles/bin"
remove_duplicates $PATH
export PATH
