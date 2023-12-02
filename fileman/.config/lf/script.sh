#!/bin/bash

# if [[ $TERM == "xterm-kitty" ]]; then
if { [ -n "$TMUX" ]; } then
  ~/.config/lf/ub-lfub.sh
elif { ! [ $TERM == "xterm-kitty" ]; } then
  ~/.config/lf/ub-lfub.sh
else  
  lf 
fi
