#!/usr/bin/env bash
mpc pause && (playerctl --list-all | xargs -L1 playerctl pause -p) ; wpctl set-mute @DEFAULT_AUDIO_SINK@ 1 && swaylock -c "#000000" -l

