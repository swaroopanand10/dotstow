#!/usr/bin/env bash

winclass="$(xdotool search --class btm_scpad)"
if [ -z "$winclass" ]; then
  kitty --class btm_scpad -e btm
else
  if [ ! -f /tmp/btm_scpad ]; then
    touch /tmp/btm_scpad && xdo hide "$winclass"
  elif [ -f /tmp/btm_scpad ]; then
    rm /tmp/btm_scpad && xdo show "$winclass"
  fi
fi
