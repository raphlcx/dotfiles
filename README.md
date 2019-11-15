# Dotfiles

dotfiles for Arch Linux.

Setup symlinks:

```
./setup
```

Install system dependencies:

```
pacman -S --needed - < pkglist.txt
```

Install AUR packages manually, each installation is done with:

```
makepkg -sirc
```

Enable user systemd services:

```
systemctl --user enable newsboat-reload.timer
systemctl --user enable ssh-agent.service
```

## Maintenance

### pacman packages

To prepare `pkglist.txt`:

```
comm -23 <(pacman -Qqntte | sort) <(pacman -Sqg base base-devel | sort) > pkglist.txt
```

For `pkglist-aur.txt`:

```
pacman -Qqm > pkglist-aur.txt
```

### Fonts

Font configurations are found in multiple locations:

 - `fontconfig/fonts.conf` contains global serif, sans-serif, and monospace font configurations for applications that support fontconfig
 - `i3wm/i3-config` for i3 font
