#!/bin/bash

# Suppress's termianl errors
function suppressErr() {
  $1 $2 2>/dev/null;
}

# Suppress's termianl warnings
function suppressWarn() {
  $1 $2 1>/dev/null;
}

# Commands
alias mv='mv -vi'
alias rm='rm -vi'
alias cp='cp -vi'
alias lsize='du -ah --max-depth=1 | sort -h'
alias 64BitRanHash='openssl rand -base64 48'
alias countDir='ls -1 | wc -l'


# Python
alias python='python3'

# Directories


# Make & CMake Commands
alias maket='make test -C'
alias cmakeb='cmake --build'
alias ctest='ctest -VV'

# Games


# Other
alias open='suppressErr xdg-open '
alias myaddress='echo "8460 Limekiln Pk 19095 PA"'
alias sourceme='source ~/.bashrc'
alias updateall='sudo apt update && sudo apt upgrade -y'
