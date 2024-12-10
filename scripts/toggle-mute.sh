#!/usr/bin/env bash

pamixer --default-source -t
if  [[ $(pamixer --default-source --get-mute) == "true" ]]; then
    echo "Toggle Mute: Muted default mic";
    notify-send "Muted Microphone" 
else
    echo "Toggle Mute: Unmuted default mic";
    notify-send "Unmuted Microphone"
fi