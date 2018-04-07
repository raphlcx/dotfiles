# Dotfiles

dotfiles for Arch Linux.

Setup symlinks:

```
./setup
```

Install system dependencies:

```
pacman -S - < pkglist.txt
```

Start ssh-agent on shell login:

```
systemctl --user enable ssh-agent.service
```

## Maintenance

### pacman packages

To prepare `pkglist.txt`:

```
comm -23 <(pacman -Qqntt | sort) <(pacman -Sqg base base-devel | sort) > pkglist.txt
```

For `pkglist-aur.txt`:

```
pacman -Qqm > pkglist-aur.txt
```

### Fonts

Font configurations are found in multiple locations:

 - `fontconfig/fonts.conf` for global serif, sans, and monospace font configurations on applications that use fontconfig
 - `x/i3-config` for i3 font
 - `x/Xresources` for urxvt font
