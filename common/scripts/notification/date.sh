#!/bin/bash

icon="/usr/share/icons/Dracula/24/actions/clock-large.svg"
title="$(date +%H:%M:%S)"
text="$(date +%d), $(date +%B) $(date +%Y), $(date +%A)"

notify-send -i $icon "$title" "$text"
