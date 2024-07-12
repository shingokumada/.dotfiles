#!/usr/bin/env bats

load "$HOME/.dotfiles/lib/path.sh"

@test "No more duplicate paths" {
    source "$HOME/.dotfiles/lib/path.sh"
    run remove_duplicates "/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/home/shingo/.dotfiles/bin:/home/shingo/.dotfiles/bin"
    [ $status -eq 0 ]
}

#@test "Delete a specific path" {
#    source "$HOME/.dotfiles/lib/path.sh"
#    run remove_path "$HOME/.dotfiles/bin"
#    [ $status -eq 0 ]
#}
