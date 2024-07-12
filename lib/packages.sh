# Package management functions.

is_installed() {
    #Specify the application name as an argument
    #ex) is_installed nvim

    if which "$1" >/dev/null; then
        return 0
    else
        return 1
    fi
}
