#!/usr/bin/env sh

url=$(buku -p -f4 | fzf -m --reverse --preview "buku -p {1}" --preview-window=wrap | cut -f2) #f5 for just titles

if [ -n "$url" ]; then
    echo "$url" | xargs thorium-browser
fi
