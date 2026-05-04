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

## Maintenance

Prepare `Brewfile`:

```
brew bundle dump --force
```

## Fresh install

For macOS Tahoe.

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
  - Keyboard: Under input sources, disable capitalise words automatically.
  - Notification: Allow notifications when mirroring / sharing display (if mirroring to an external display).
  - Accessibility: Under Pointer Control > trackpad options, enable three finger drag.
  - Network: Turn on firewall. Enable stealth mode in firewall options.
  - General: Under Language & Region, ensure only "English (UK)" and "Simplified Chinese" are listed under preferred languages, in that order.
  - General: Under Date & Time, use 24-hour time format.
  - General: Under Sharing, update computer's name as needed.
  - General: Under Storage, enable Optimise Storage.
  - General: Under Storage, enable Empty Bin automatically.
  - Menu bar: Set to always show Sound in menu bar.
  - Menu bar: Set to always hide Spotlight in menu bar.
  - Privacy & Security: Disable personalised ads under advertising.
  - Privacy & Security: Disable everything under analytics.
  - Desktop & Dock: Enable automatic hide and show dock.
  - Desktop & Dock: Disable suggested and recent applications in dock.
  - Displays: Disable automatic brightness adjustment.
  - Lock Screen: Never start screen saver.
  - Lock Screen: Turn display off on battery - 1 hour.
  - Lock Screen: Turn display off on power adapter - 1 hour.
  - Lock Screen: Require password immediately after sleep.

On Desktop:

  - Remove all items on Dock.
  - On menu bar, use control centre to turn on AirDrop for contacts only.

On Terminal:

  - Install Xcode command-line tools.
  - Install Homebrew.
  - Clone dotfiles repository to `$HOME` using HTTPS protocol.
  - Navigate into the repository, run the `setup` script.
  - Update repository's remote to use SSH protocol.
  - Install system packages via Homebrew bundle.
  - Amend permission on GnuPG directory, `chmod 700 $HOME/.gnupg`.
  - Import "Pro 2" Terminal profile and set the profile as default.

On Mail settings:

  - Under Fonts & Colours, use fixed-width font for plain text messages.
  - Under Composing, use plain text for message format.

On Activity Monitor view:

  - Set update frequency to very often (1 sec).

On Finder settings:

  - Under General, set new Finder window to show "Downloads".
  - Under Tags, uncheck all tags and remove all favourite tags.
  - Under Sidebar, check only "Desktop", "Documents", and "Downloads" under Favourites.
  - Under Sidebar, uncheck everything under Tags.
  - Under Advanced, allow showing all filename extensions.
