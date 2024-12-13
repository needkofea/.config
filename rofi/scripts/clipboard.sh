#!/usr/bin/env bash

dir="$HOME/.config/rofi/menus"
theme='clipboard'

## Run
selected=$(cliphist list | rofi -dmenu -theme "$dir/$theme")

if [ -z "$selected"]; then
    exit 1
fi

preview=$(echo "$selected" | sed 's/^[^\t]*\t//')

printf "$selected" | cliphist decode | wl-copy

notify-send "Copied to clipboard" "$preview" -a "Clipboard History"
