# Functions for managing paths.
remove_duplicates() {
    PATH=$(echo "$PATH" | tr ':' '\n' | uniq | awk '/\/[a-z]/' | tr '\n' ':' | sed 's/.\{1\}$//')
}

remove_path() {
    # Specify the path you want to remove from the shell's environment variables as an argument.
    # ex) remove_path /$HOME/.dotfiles/bin

    PATH=$(echo -n "$PATH" | awk -v RS=: -v ORS=: "$($0 != "$1")" | sed 's/:$//')
}