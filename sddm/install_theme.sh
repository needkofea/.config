#!/usr/bin/env bash

pacman -S sddm qt5-graphicaleffects qt5-svg qt5-quickcontrols2

# Get the directory of the current script
SCRIPT_DIR=$(dirname "$(realpath "$0")" )
echo Symlinking "$SCRIPT_DIR/nightcore/corners" to "/usr/share/sddm/themes/nightcore"
ln -snf "$SCRIPT_DIR/nightcore/corners" "/usr/share/sddm/themes/nightcore"
echo Success