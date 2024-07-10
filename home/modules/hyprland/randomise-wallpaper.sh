#!/usr/bin/env bash 
PATH="/home/${USER}/.config/swww/wallpaper/"
FILE=ls $PATH | sort -R | tail -1
swww img --transition-type wipe --transition-angle 330 --transition-step 90 ${PATH}/${FILE}
