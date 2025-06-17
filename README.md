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

## Fresh install

For macOS Sequoia.

On a fresh macOS install, perform these changes in System Settings:

  - Trackpad: Set tap to click.
  - Trackpad: Set click to "light".
  - Trackpad: Set tracking speed until there are only 4 vertical bars visible to the right.
  - Trackpad: Disable smart zoom.
  - Keyboard: Set key repeat to fastest and repeat delay to shortest.
  - Keyboard: Under keyboard shortcuts > modifier keys, set Caps Lock as Escape key.
  - Keyboard: Under input sources, set to always show input menu in menu bar.
  - Keyboard: Under input sources, add simplified Chinese Pinyin.
  - Keyboard: Under input sources, disable automatic spelling correction.
  - Notification: Allow notifications when mirroring / sharing display (if mirroring to an external display).
  - Accessibility: Under Pointer Control > trackpad options, enable three finger drag.
  - Network: Turn on firewall. Enable stealth mode in firewall options.
  - General: Under Language & Region, ensure only "English (UK)" and "Simplified Chinese" are listed under preferred languages, in that order.
  - General: Under Date & Time, use 24-hour time format.
  - General: Under Sharing, update computer's name as needed.
  - General: Under Storage, enable Optimise Storage.
  - General: Under Storage, enable Empty Bin automatically.
  - Control Centre: Set to always show Sound in menu bar.
  - Control Centre: Set to show Focus when active in menu bar.
  - Control Centre: Set to always hide Spotlight in menu bar.
  - Privacy & Security: Disable personalised ads under advertising.
  - Privacy & Security: Disable everything under analytics.
  - Desktop & Dock: Enable automatic hide and show dock.
  - Desktop & Dock: Disable recent applications in dock.
  - Displays: Disable automatic brightness adjustment.
  - Lock Screen: Never start screen saver.
  - Lock Screen: Turn display off on battery - 1 hour.
  - Lock Screen: Turn display off on power adapter - 1 hour.
  - Lock Screen: Require password immediately after sleep.
  - Lock Screen: Login windows to show list of users.

On Desktop:

  - Remove all items on Dock.
  - On menu bar, use control centre to turn on AirDrop for contacts only.

On Terminal:

  - Install Homebrew.
  - Install openssl via `brew install openssl@3`.
  - Retrieve keys backup, decrypt with openssl and extract it. Place the content in `$HOME`, as appropriate.
  - Clone dotfiles repository to `$HOME` using HTTPS protocol.
  - Navigate into the repository, run the `setup` script.
  - Update repository's remote to use SSH protocol.
  - Remove openssl.
  - Install system packages via Homebrew bundle.
  - Install vim plugins.
  - Amend permission on GnuPG directory, `chmod 700 $HOME/.gnupg`.
  - Import PGP private keys, public keys, and owner trust from keys backup.
  - Remove the PGP keys backup.
  - Remove the backup artefacts.
  - Close Terminal.
  - Removing Terminal artefacts:
      - In System Settings > Privacy & Security > Files and Folders, remove Terminal.
      - From favoured terminal application, remove `$HOME/.zsh_sessions`.

Restore Documents:

  - Download Documents backup. Decrypt and extract it. Place the content in `$HOME/Documents`, as appropriate.
  - `chmod 700` on `$HOME/Documents` directory.

On Mail settings:

  - Under Fonts & Colours, use fixed-width font for plain text messages.
  - Under Composing, use plain text for message format.

On Activity Monitor view:

  - Set update frequency to very often (1 sec).

On Finder settings:

  - Under General, set new Finder window to show "Downloads".
  - Under Tags, uncheck all tags and remove all favourite tags.
  - Under Sidebar, check only "Desktop", "Documents", and "Downloads" and home directory under Favourites.
  - Under Sidebar, uncheck everything under iCloud and Tags.
  - Under Advanced, allow showing all filename extensions.
  - On the Finder window's sidebar, order the sidebar items in the following order:
      - Home directory
      - Documents
      - Desktop
      - Downloads
