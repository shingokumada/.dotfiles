#!/usr/bin/env bats

load "$HOME/.dotfiles/lib/packages.sh"

@test "If it is not installed, the status will be 1." {
    source "$HOME/.dotfiles/lib/packages.sh"
    run is_installed dkjfsjfdsjfsl
    [ $status -eq 1 ]
}

@test "If it is installed, the status will be 0." {
    source "$HOME/.dotfiles/lib/packages.sh"
    run is_installed tmux
    [ $status -eq 0 ]
}
