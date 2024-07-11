#!/bin/sh
# this script toggles between two commands
TOGGLE=$HOME/.local/share/.toggle_wall
wallpaper=$HOME/.config/hypr/navy-blue-fluid-painting-d0x1q0mcxqzzzanx.jpg

if [ ! -e "$TOGGLE" ]; then
    touch "$TOGGLE" # placing it first so that the prompt doesn't get stuck when swaybg command is executed
    killall swaybg &&
    swaybg -c "#000000" &
else
    rm "$TOGGLE"
    killall swaybg &&
    swaybg -i "$wallpaper"
fi
