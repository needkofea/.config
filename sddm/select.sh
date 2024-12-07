#!/usr/bin/env bash

SCRIPT_DIR=$(dirname "$(realpath "$0")" )

SDDM_CONF="/usr/lib/sddm/sddm.conf.d/default.conf"

NEW_THEME="nightcore"

# Check if the theme directory exists
if ! [ -d "/usr/share/sddm/themes/$NEW_THEME" ]; then
    echo "Theme '$NEW_THEME' not found. Innstalling theme..."
    sudo sh "$SCRIPT_DIR/install_theme.sh"


    # Check if the theme was installed successfully
    if [ -d "/usr/share/sddm/themes/$NEW_THEME" ]; then
        echo "Theme '$NEW_THEME' installed successfully."
    else
        echo "Error: Theme installation failed."
        exit 1
    fi
else
    echo "Theme '$NEW_THEME' found. Changing theme..."
fi

 # Backup the current SDDM config
cp "$SDDM_CONF" "$SDDM_CONF.nightcore.bak"
echo "Backup of SDDM configuration created at $SDDM_CONF.nightcore.bak"

# Update the 'Current' theme setting in the SDDM config
sed -i "s|^Current=.*|Current=$NEW_THEME|" "$SDDM_CONF"
echo "SDDM theme changed to '$NEW_THEME'."