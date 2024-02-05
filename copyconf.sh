####
# This script is used to copy my config files over for use on reboot of installation.

# Using bumblebee-status instead of polybar or i3status (installed for initial login)
# https://bumblebee-status.readthedocs.io/en/main/index.html
#pip install --user bumblebee-status

# Package needed for bumblebee-status if using apt module - currently configured is i3gaps config file.
#sudo apt install -y aptitude

cd
cd debian12-13wm
cp -r .config/backgrounds/ ~/.config
cp -r .config/i3/ ~/.config
cp -r .config/dunst/ ~/.config
cp -r .config/alacritty/ ~/.config
cp -r .config/rofi/ ~/.config
cp -r .config/picom/ ~/.config
cp -r .config/neofetch/ ~/.config
chmod +x ~/.config/i3/scripts/*
