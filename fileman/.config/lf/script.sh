#!/bin/bash

# if [[ $TERM == "xterm-kitty" ]]; then
if { [ -n "$TMUX" ]; } then # if in tmux
  ~/.config/lf/lfubpp.sh
elif { ! [ $TERM == "xterm-kitty" ]; } then # if any other terminal than kitty
  ~/.config/lf/lfubpp.sh
else  
  lf 
fi
