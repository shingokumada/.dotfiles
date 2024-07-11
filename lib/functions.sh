#!/usr/bin/env bash

eliminate_duplicate_paths() {
    PATH=$(echo "$PATH" | tr ':' '\n' | uniq | awk '/\/[a-z]/' | tr '\n' ':' | sed 's/.\{1\}$//')
}

remove_path() {
    PATH=$(echo -n "$PATH" | awk -v RS=: -v ORS=: "$($0 != "$HOME"/.dotfiles)" | sed 's/:$//')
}
