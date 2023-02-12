#!/bin/bash

#https://wiki.archlinux.org/title/general_recommendations
# sudo pacman -Syu
# uname -r

# # Base
#   pacman -S --needed git nano curl base-devel 
# #


# bash colors: https://dev.to/ifenna__/adding-colors-to-bash-scripts-48g4
declare -a color=(
  [0]="\e[30m"
  [1]="\e[97m"
  [2]="\e[31m"
  [3]="\e[32m"
  [4]="\e[34m"
  [100]="\e[0m"
)


# Browsers
declare -a browser=(
  [0]=firefox
  [1]=chromium
  [2]=brave
  [3]=librewolf
)


# Terminal Emulators
declare -a term_emulat=(
  [0]=kitty
  [1]=kitty
  [2]=alacrity
)

# Codecs
  #sudo pacman -S a52dec faac faad2 flac jasper lame libdca libdv libmad libmpeg2 libtheora libvorbis libxv wavpack x264 xvidcore gstreamer0.10-plugins
#

# Microcode
#

# Drivers
  #nvidia
  #amd
#

# Aur Helpers
  #yay (Yet Another Yogurt )
    # pacman -S --needed git base-devel
    # git clone https://aur.archlinux.org/yay-bin.git
    # cd yay-bin
    # makepkg -si
    # #First-Use
    # yay -Y --gendb
    # yay -Syu --devel

  #Chaotic-AUR
    #link: https://aur.chaotic.cx/
#

# App Bundlers
  #snap
  #flatpak
  #appimage
#

# Gaming
  #steam
  #lutris
  #protonup
#


# IDES
  #vscode
  #atom
  #vim
  #emacs
#

# Note
  #obsidian
#

# Internet Download Managers
  #Motrix
    #motrix --no-sandbox
#

# Devel
  #npm
  #rust
  #nim
  #python3
  #php
  #mysql
  #sqlite
  #apachi
  #nginx
  #docker
  #podman
  #buildah
#
declare -a dev_tools=(
  [0]=gcc
  [1]=rustup
)

function check_list() {
  name=$1[@]
  a=("${!name}")
  # a=$1[@]
  echo -e "${color[4]}$1:"
  for i in "${a[@]}";
    do
      # echo -e "$i \n"
      # Chech If The Program is installed
      echo -e -n " "
      if ! command -v $i &> /dev/null
        then
          echo -e -n "${color[2]}$i "
        else 
          echo  -e -n "${color[3]}$i "
      fi
    done
  echo ""
}
check_list dev_tools



# echo -e "${color[2]}Browsers:${color[100]}"
# echo " ${browser[@]}"

# echo -e "${color[2]}Checking Dev Tools ${color[100]}"
# # read -p 'Enter Number 1: ' number1 
# # read -p 'Enter Number 2: ' number2