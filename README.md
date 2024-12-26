# Kofea's dotfiles


These dotfiles are incomplete.

It is recommended that you first install the dotfiles at `https://github.com/prasanthrangan/hyprdots`, before then patching them with these repo's dotfiles.

> [!IMPORTANT]
> Do not expect these dotfiles to work perfectly with HyDE features.
> In fact, these configs WILL conflict with many of HyDE features. (eg. waybar switching, wallpaper switching).

## NEOVIM
The nvim config is stored in another repository. It is referenced in this repo as a git submodule.

Therefore when cloning, you have to include the `--recurse-submodules` flag.

## SDDM Theme
You can install the sddm theme by running:
```
~/.config/sddm/install_theme.sh
```
Assuming you cloned this repo into `~/.config`.

This will download the deps for the sddm theme 
~~and symlink it~~ (SDDM cannot seem to read symlinks) and copy the theme into `/usr/share/sddm/themes/needkofea`.



You still have to manually configure sddm to select the theme. See https://man.archlinux.org/man/sddm.conf.5


## Dependencies
1. HyDE - https://github.com/prasanthrangan/hyprdots
   The dotfiles are highly dependent on HyDE and the stuff it installs. So I highly recommend you to HyDE first.
2. `starship` - Shell prompt
3. `zsh` - Shell
4. `yay` - AUR helper
5. `hyprland` - The window manager
6. `pipewire` - Audio
    1. `pipewire-alsa` 
    2. `pipewire-audio` 
    3. `pipewire-jack` 
    4. `pipewire-puls` 


**Desktop Shell**
1. `sddm` - Display Manager 
2. `dunst` - Notifications
3. `pavucontrol` - Pulse Audio GUI
4. `swww` - Wallpaper
5. `swaylock` - Lock screen (Super + L)
6. `waybar` - https://github.com/Alexays/Waybar
7. `hyprswitch` - https://github.com/H3rmt/hyprswitch/
8. `playerctl` - https://github.com/altdesktop/playerctl
9. `pamixer` - https://github.com/cdemoulins/pamixer
10. `kvantum`, `qt5ct`, `qt6ct` - Theming fot Qt apps
11. `swappy` - Snapshot editor
12. `rofi` - General launcher for apps.

**Desktop Portals (For inter App communication & screen sharing)**
1. `xdg-desktop-portal 1.18.4-2`
2. `xdg-desktop-portal-gtk 1.15.1-2`
3. `xdg-desktop-portal-hyprland 1.3.9-3`

**Fonts**
1. `noto-fonts-emoji` - Noto Color Emoji
2. `ttf-jetbrains-mono-nerd` - Jetbrains Nerd Font

**Essential Apps**
1. `flatpak` - Application management
2. `gnome-software` - GUI for flatpak
3. `seahorse`- GUI PGP keys management
4. `gnome-keyring` - Backend for PGP keys


## Future plans
1. Make the dotfiles fully independent of HyDE
