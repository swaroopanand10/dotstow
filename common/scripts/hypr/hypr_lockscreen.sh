#!/usr/bin/env bash
mpc pause && (playerctl --list-all | xargs -L1 playerctl pause -p) ; pamixer -m && swaylock -c "#000000" -l

