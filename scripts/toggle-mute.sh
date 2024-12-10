#!/usr/bin/env bash

pamixer --default-source -t
if  [[ $(pamixer --default-source --get-mute) == "true" ]]; then
    echo "Toggle Mute: Muted default mic";
    notify-send -a "Toggle Mute" "Muted" -t 2000 -u low
else
    echo "Toggle Mute: Unmuted default mic";
    notify-send -a "Toggle Mute" "Unmuted" -t 2000 -u low
fi