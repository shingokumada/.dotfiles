# Package management functions.
is_installed() {
    #Specify the application name as an argument
    #ex) is_installed nvim

    which $1 >/dev/null
    echo $?
}
