#!/usr/bin/env sh

swww init &
swww img --transition-type wipe --transition-angle 330 --transition-step 255 --filter Nearest /home/${USER}/.config/swww/wallpaper/$(ls /home/${USER}/.config/swww/wallpaper/ | sort -R | tail -1) &
waybar &
dunst
