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

This will download the deps for the sddm theme and symlink it into `/usr/share/sddm/themes/nightcore`

You still have to manually configure sddm to select the theme. See https://man.archlinux.org/man/sddm.conf.5


## Dependencies
1. HyDE - https://github.com/prasanthrangan/hyprdots

   The dotfiles are highly dependent on HyDE and the stuff it installs. So I highly recommend you to HyDE first.

2. `playerctl` - https://github.com/altdesktop/playerctl
3. `waybar` - https://github.com/Alexays/Waybar
4. `pamixer` - https://github.com/cdemoulins/pamixer

## Future plans
1. Make the dotfiles fully independent of HyDE
