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
  [5]="\e[37m"
  [6]="\e[90m"
  [100]="\e[0m"
)

function check_list() {
  name=$1[@]
  a=("${!name}")
  echo -e -n " ${color[3]}$1:"
  for i in "${a[@]}";
    do
      # Check If The Program is installed
      echo -e -n ""
      if ! command -v $i &> /dev/null
        then
          echo -e -n " ${color[6]}$i"
        else 
          echo  -e -n " ${color[5]}$i"
      fi
    done
  echo ""
}


# echo -e "${color[2]}Checking Dev Tools ${color[100]}"
# # read -p 'Enter Number 1: ' number1 
# # read -p 'Enter Number 2: ' number2

declare -a browser=(
  [0]=firefox
  [1]=chromium
  [2]=brave
  [3]=librewolf
)
check_list browser

declare -a term=(
  [0]=kitty
  [1]=alacritty
)
check_list term

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
declare -a aur_helpers=(
  [0]=yay
)
check_list aur_helpers

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

# IDE
declare -a ide=(
  [0]=nano
  [1]=vim
  [2]=neovim
  [3]=emacs
  [4]=code
  [5]=atom
)
check_list ide

declare -a note=(
  [0]=obsidian
)
check_list note



# Internet Download Managers
  #Motrix
    #motrix --no-sandbox
declare -a idm=(
  [0]=motrix
)
check_list idm


# Devel
  #podman
  #buildah
#

declare -a data_bases=(
  [0]=mysql
  [1]=sqlite3
)
check_list data_bases


declare -a dev_tools=(
  [0]=gcc
  [1]=npm
  [2]=apache
  [3]=nginx
  [4]=docker
)
check_list dev_tools

declare -a progrraming_language=(
  [0]=rustup
  [1]=nim
  [2]=python3
  [3]=php
  [4]=zig
  [5]=go
)
check_list progrraming_language

