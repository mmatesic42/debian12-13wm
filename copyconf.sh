####
# This script is used to copy my config files over for use on reboot of installation.

# Using bumblebee-status instead of polybar or i3status (installed for initial login)
# https://bumblebee-status.readthedocs.io/en/main/index.html
#pip install --user bumblebee-status

# Package needed for bumblebee-status if using apt module - currently configured is i3gaps config file.
#sudo apt install -y aptitude
#!/bin/bash

# Set the source and target directories
source_dir="$HOME/debian12-13wm/.config"
target_dir="$HOME/.config"

# Array of directories to copy
directories=(
    "backgrounds"
    "i3"
    "dunst"
    "rofi"
    "picom"
    "neofetch"
)

# Ensure target directories exist
for dir in "${directories[@]}"
do
    target_subdir="$target_dir/$dir"
    mkdir -p "$target_subdir"
done

# Copy configurations with directory existence check
for dir in "${directories[@]}"
do
    source_subdir="$source_dir/$dir"
    target_subdir="$target_dir/$dir"
    
    if [ -d "$source_subdir" ]; then
        cp -r "$source_subdir/"* "$target_subdir"
        chmod +x "$target_subdir/scripts/"*
    else
        echo "Warning: Source directory $source_subdir not found."
    fi
done

# Optional: Set ownership if needed
chown -R "$USER:$USER" "$target_dir"

echo "Configurations copied successfully."

