#!/usr/bin/env bash

dir="$HOME/.config/rofi/menus"
theme='clipboard'

## Run
cliphist list | rofi -dmenu -theme "$dir/$theme" | cliphist decode | wl-copy

notify-send "Copied to clipboard" -a "Clipboard History"
