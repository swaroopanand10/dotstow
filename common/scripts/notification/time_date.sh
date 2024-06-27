#!/bin/bash

title="$(date +%H:%M:%S)"
text="$(date +%d), $(date +%B) $(date +%Y), $(date +%A)"

notify-send "$title" "$text"
