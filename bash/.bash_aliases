#!/bin/bash

# Suppress's termianl errors
function suppressErr() {
  $1 $2 2>/dev/null;
}

# Suppress's termianl warnings
function suppressWarn() {
  $1 $2 1>/dev/null;
}

#bios dumping 
#https://www.youtube.com/watch?v=mM7ntkiUoPk&t=6s
function UnbindGPU(){
  #example run lspci -v then add the number of gpu
   #echo "0000:09:00.0" > /sys/bus/pci/drivers/vfio-pci/unbind 
   echo $1 > /sys/bus/pci/drivers/vfio-pci/unbind 
}

function MoveFileToDir(){

 # $1 should be the Regex
 # $2 is the Dir to move it to
 find . -name $1 -exec mv {}  $2/ \;
}

# Commands
alias mv='mv -vi'
alias rm='rm -vi'
alias cp='cp -vi'
alias lsize='du -ah --max-depth=1 | sort -h'
alias 64BitRanHash='openssl rand -base64 48'
alias countDir='ls -1 | wc -l'
alias listConnectedDevices='lspci -v'
alias unbindGPU='UnbindGPU'
alias connectedDevices='lspci -v'
alias MoveFiles='MoveFileToDir'
#Docker commands
alias df="docker system df"
alias prune="docker system prune"

#DIR's
alias home='cd /mnt/user' 


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
