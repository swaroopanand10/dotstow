#!/usr/bin/env bash

# kitten icat --clear --transfer-mode memory < /dev/null > /dev/tty
kitty +kitten icat --clear --stdin no --transfer-mode memory < /dev/null > /dev/tty

