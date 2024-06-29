#!/bin/sh
# this script toggles between two commands
TOGGLE=$HOME/.local/.toggle
wallpaper=$HOME/.config/hypr/navy-blue-fluid-painting-d0x1q0mcxqzzzanx.jpg

if [ ! -e "$TOGGLE" ]; then
    touch "$TOGGLE"
    killall swaybg ; swaybg -c "#000000"
else
    rm "$TOGGLE"
    killall swaybg ; swaybg -i "$wallpaper"
fi
