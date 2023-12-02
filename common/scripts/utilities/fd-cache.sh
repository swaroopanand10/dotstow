#!/bin/bash 

# fd . ${1:-$HOME} -u -E "*.exe"  -E "*.out" -E "*.jpg" -E "*.png" -E "*.jpeg" -E "*.tar" -E "*.mp3" -E "*.opus" -E "*.docx" -tf -ts > /dev/null
sleep 8
fd -t f -e pdf -u . ${1:-$HOME} > /dev/null &
# fd  > /dev/null &
