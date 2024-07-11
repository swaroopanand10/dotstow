#!/bin/sh

# this script toggles between two commands
TOGGLE=$HOME/.local/share/.toggle_media

if [ ! -e "$TOGGLE" ]; then
    touch "$TOGGLE"
    wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle && killall -q -STOP 'pipewire'
    notify-send --replace-id=555 -u critical " All Media Muted  " -t 2000 -h string:fgcolor:#ff0000
else
    rm "$TOGGLE"
    killall -q -CONT 'pipewire' && wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
    notify-send --replace-id=555 -u critical " All Media Unmuted  " -t 2000 -h string:fgcolor:#ff0000
fi
