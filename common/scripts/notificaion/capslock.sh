#! /bin/bash
sleep 0.15
# sleep 0.2
capslock=$(cat $(find /sys/class/leds -name "*capslock"|head -1)/brightness)

if [[ "$capslock" == "1" ]]; then
  notify-send --replace-id=100 "capslock on"
else
  notify-send --replace-id=100 "capslock off"
fi
