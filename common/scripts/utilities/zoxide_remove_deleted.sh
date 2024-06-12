#!/usr/bin/env bash

zoxide query --all -l | while read -r dir; do
    if [ ! -d "$dir" ]; then 
        echo "$dir"
        zoxide remove "$dir" 
    fi
done
