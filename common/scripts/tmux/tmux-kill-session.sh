#!/usr/bin/env bash

# the grep part in below variable is to exclude the current session from getting listed
sessions=$(tmux list-sessions -F "#{session_name}" \
| grep -v $(tmux display-message -p '#S') \
| fzf --reverse -m --exit-0 --preview='tmux_tree {} | bat --theme TwoDark --style plain')

for session in $sessions; do
tmux kill-session -t "$session"
done
