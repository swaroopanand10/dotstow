#!/bin/sh

sxhkd &
touchegg &
auto-cpufreq &
xset r rate 200 70
# ly &

exec bspwm
# if [[ -z $DISPLAY && $(tty) == /dev/tty1 && $XDG_SESSION_TYPE == tty ]]; then
#   MOZ_ENABLE_WAYLAND=1 QT_QPA_PLATFORM=wayland XDG_SESSION_TYPE=wayland exec dbus-run-session gnome-session
# fi
