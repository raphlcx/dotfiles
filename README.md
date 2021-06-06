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
bin/vv install < nvim/plugins
```

## Maintenance

Prepare `Brewfile`:

```
brew bundle dump --force
```

Prepare `nvim/plugins`:

```
bin/vv dump > nvim/plugins
```
