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

 - `fontconfig` for global font configuration
 - `x/i3-config` for i3 font
 - `x/Xresources` for urxvt font
