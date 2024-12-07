#!/usr/bin/env bash

pacman -S sddm qt5-graphicaleffects qt5-svg qt5-quickcontrols2

# Get the directory of the current script
SCRIPT_DIR=$(dirname "$(realpath "$0")" )

ln -sf "$SCRIPT_DIR/nightcore/corners" "/usr/share/sddm/themes/nightcore"
chmod 755 "/usr/share/sddm/themes/nightcore"

