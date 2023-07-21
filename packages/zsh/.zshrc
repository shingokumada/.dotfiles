### alias ###
alias cpuinfo="cat /proc/meminfo | less"
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

# manpages-ja 
export LANG=ja_JP.utf8

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
antigen bundle wbingli/zsh-wakatime
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
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
export PATH="/home/linuxbrew/.linuxbrew/sbin:$PATH"

### .bin ###
export PATH="$PATH:$HOME/.bin"
export PATH="$PATH:$HOME/.bin/build"

### pyenv ###
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

# pip
export PATH="$PATH:$HOME/.local/bin"

### rbenv ###
eval "$(rbenv init -)"

### wakatime ###
export ZSH_WAKATIME_PROJECT_DETECTION=true

### GitHub ssh ###
# Configure ssh forwarding
export SSH_AUTH_SOCK=$HOME/.ssh/agent.sock
# need `ps -ww` to get non-truncated command for matching
# use square brackets to generate a regex match for the process we want but that doesn't match the grep command running it!
ALREADY_RUNNING=$(ps -auxww | grep -q "[n]piperelay.exe -ei -s //./pipe/openssh-ssh-agent"; echo $?)
if [[ $ALREADY_RUNNING != "0" ]]; then
    if [[ -S $SSH_AUTH_SOCK ]]; then
        # not expecting the socket to exist as the forwarding command isn't running (http://www.tldp.org/LDP/abs/html/fto.html)
        echo "removing previous socket..."
        rm $SSH_AUTH_SOCK
    fi
    echo "Starting SSH-Agent relay..."
    # setsid to force new session to keep running
    # set socat to listen on $SSH_AUTH_SOCK and forward to npiperelay which then forwards to openssh-ssh-agent on windows
    (setsid socat UNIX-LISTEN:$SSH_AUTH_SOCK,fork EXEC:"npiperelay.exe -ei -s //./pipe/openssh-ssh-agent",nofork &) >/dev/null 2>&1
fi

### Remove duplicate paths ###
export PATH=$(printf %s "$PATH" | awk -v RS=: -v ORS=: '!arr[$0]++')

