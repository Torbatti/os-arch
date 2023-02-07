#https://wiki.archlinux.org/title/general_recommendations
sudo pacman -Syu
uname -r

# Base
  pacman -S --needed git nano curl base-devel 
#

# Desktop Enviornment
# Widnow Manager
# Display Manager

# Browsers
  #firefox
  #chromium
  #brave
  #librewolf
#

# Terminal Emulators
  #kitty
  #alacrity
#

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
    pacman -S --needed git base-devel
    git clone https://aur.archlinux.org/yay-bin.git
    cd yay-bin
    makepkg -si
    #First-Use
    yay -Y --gendb
    yay -Syu --devel

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