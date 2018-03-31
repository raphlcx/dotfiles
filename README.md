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

To prepare `pkglist.txt`:

```
comm -23 <(pacman -Qqntt | sort) <(pacman -Sqg base base-devel | sort) > pkglist.txt
```

For `pkglist-aur.txt`:

```
pacman -Qqm > pkglist-aur.txt
```
