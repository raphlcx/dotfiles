# Dotfiles

dotfiles for macOS.

Setup symlinks:

```
./setup
```

Install dependencies:

```
brew bundle
```

Install vim plugins:

```
bin/vv install < vim-plugins
```

## Maintenance

Prepare `Brewfile`:

```
brew bundle dump --force
```

Prepare `vim-plugins`:

```
bin/vv dump > vim-plugins
```
