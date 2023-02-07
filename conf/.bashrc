#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Terminal
WHITE="\e[97m"
LIGHTGRAY="\e[37m"
GREEN="\e[32m"
ENDCOLOR="\e[0m"
PS1="${GREEN}(${WHITE}\u${GREEN}@${WHITE}\h ${GREEN}\W )${LIGHTGRAY}\$ ${ENDCOLOR}"

# Aliasses
alias ls='ls --color=auto'

# $HOME
. "$HOME/.cargo/env"

