#!/usr/bin/env sh

buku -p -f5 | sed 's/\t/ /' | fzf --ansi -m --reverse --preview "buku -p {1}" --preview-window=wrap | cut -f1 -d ' ' | xargs --no-run-if-empty buku -o # this is better

# url=$(buku -p -f4 | fzf -m --reverse --preview "buku -p {1}" --preview-window=wrap | cut -f2)

# if [ -n "$url" ]; then
#     echo "$url" | xargs firefox
# fi
