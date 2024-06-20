#!/usr/bin/env bash

winclass="$(xdotool search --class ncmpcpp_scpad)"
if [ -z "$winclass" ]; then
  kitty --class ncmpcpp_scpad -e ncmpcpp
else
  if [ ! -f /tmp/ncmpcpp_scpad ]; then
    touch /tmp/ncmpcpp_scpad && xdo hide "$winclass"
  elif [ -f /tmp/ncmpcpp_scpad ]; then
    rm /tmp/ncmpcpp_scpad && xdo show "$winclass"
  fi
fi
