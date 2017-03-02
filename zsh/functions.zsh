####################
# functions
####################

# print available colors and their numbers
function colours() {
    for i in {0..255}; do
        printf "\x1b[38;5;${i}m colour${i}"
        if (( $i % 5 == 0 )); then
            printf "\n"
        else
            printf "\t"
        fi
    done
}

# Create a new directory and enter it
function md() {
    mkdir -p "$@" && cd "$@"
}

# find shorthand
function f() {
    find . -name "$1"
}

# set the background color to light
function light() {
    export BACKGROUND="light" && reload!
}

function dark() {
    export BACKGROUND="dark" && reload!
}

# list and change theme
function themes() {
    basename `ls  $DOTFILES/.config/base16-shell/scripts/*.sh`
    echo "Current theme is $THEME"
}

# change theme to given name
function theme() {
    export THEME="base16-$1" && reload!
}

# smart git alias with auto-status
function g() {
    if [[ $# > 0 ]]; then
        # if there are arguments, send them to git
        git $@
    else
        # otherwise, run git status
        git status
    fi
}

# reload!
function reload!() {
    source ~/.zshrc
}
