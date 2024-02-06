#!/bin/bash
font_dir="$HOME/.local/share/fonts"
mkdir -p "$font_dir"

cd /tmp
fonts=( 
"FiraCode" 
"Go-Mono" 
"Hack" 
"Inconsolata" 
"Iosevka" 
"JetBrainsMono" 
"RobotoMono" 
"SourceCodePro" 
)

for font in ${fonts[@]}
do
    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/$font.zip
    unzip $font.zip -d $HOME/.local/share/fonts/$font/
    rm $font.zip
done
chown -R "$USER:$USER" "$font_dir"
fc-cache -vf

