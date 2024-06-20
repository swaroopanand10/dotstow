#!/usr/bin/env bash

winclass="$(xdotool search --class normal_terminal_scpad)"
if [ -z "$winclass" ]; then
  kitty --class normal_terminal_scpad
else
  if [ ! -f /tmp/normal_terminal_scpad ]; then
    touch /tmp/normal_terminal_scpad && xdo hide "$winclass"
  elif [ -f /tmp/normal_terminal_scpad ]; then
    rm /tmp/normal_terminal_scpad && xdo show "$winclass"
  fi
fi
