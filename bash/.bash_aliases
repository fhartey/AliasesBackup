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

# Editors
alias vi='nvim'
alias pdf='xdg-open'
alias gvim='suppressErr nvim-qt'
alias vim='nvim'

#Git aliases
alias gc='git commit'

#GCC
alias gccc='gcc -Wall -std=c++17'
alias g++c='g++ -Wall -std=c++17'

# Clang
alias clangf='clang-format -i -style=Google'
alias clangc='clang++ -Wall -std=c++17'

# Python
alias python='python3'

#Terminals
alias gterm='gnome-terminal'
alias gtab='gnome-terminal --tab'
alias ntw='gnome-terminal'
alias xtw='xterm -fa Monospace -fs 12 &'

# Internet Browser
alias weather='curl wttr.in'
alias ff="$HOME/Github/Dotfiles/bash/firefox_search.sh -s"
alias ffw="$HOME/Github/Dotfiles/bash/firefox_search.sh -w"

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
