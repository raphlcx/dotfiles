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

For macOS Monterey 12.3.1.

On a fresh macOS install, perform these changes in System Preferences:

  - Trackpad: Set tap to click.
  - Trackpad: Disable smart zoom.
  - Keyboard: Set key repeat to fastest and repeat delay to shortest.
  - Keyboard: Under modifier keys, set Caps Lock as Escape key.
  - Keyboard: Under input sources, add simplified Chinese Pinyin.
  - Keyboard: Under input sources, set to always show input menu in menu bar.
  - Keyboard: Under shortcuts, for input sources, enable select next source in input menu (Ctrl+Alt+Space).
  - Accessibility: Under Pointer Control, enable three finger drag on trackpad.
  - Language & Region: Use 24-hour time format.
  - Dock: Enable automatic hide and show dock.
  - Dock: Disable recent applications in dock.
  - Dock: Under Sound, set to always show in menu bar.
  - Dock: Under Spotlight, disable showing in menu bar.
  - Sharing: Update computer's name as needed.
  - Security & Privacy: Require password immediately after sleep.
  - Security & Privacy: Turn on firewall. Enable stealth mode in firewall options.
  - Security & Privacy: Under Privacy tab, disable personalised ads under advertising.
  - Security & Privacy: Under Privacy tab, disable everything under analytics.

On Desktop:

  - Remove all items on Dock.
  - On menu bar, use control centre to turn off AirDrop.

On Terminal:

  - Install Homebrew.
  - Install openssl via `brew install openssl@1.1`.
  - Retrieve keys backup, decrypt with openssl and extract it. Place the content in `$HOME`, as appropriate.
  - Clone dotfiles repository to `$HOME` using HTTPS protocol.
  - Navigate into the repository, run the `setup` script.
  - Update repository's remote to use SSH protocol.
  - Remove openssl.
  - Install dependencies.
  - Install vim plugins.
  - Amend permission on GnuPG directory, `chmod 700 $HOME/.gnupg`.
  - Import PGP private keys, public keys, and owner trust from keys backup.
  - Remove the PGP keys backup.
  - Remove the backup artefacts.
  - Close Terminal.

Removing Terminal artefacts:

  - In System Preferences, Security & Privacy, Privacy tab, Files and Folders sidebar, remove Terminal.
  - From favoured terminal application, remove `$HOME/.zsh_sessions`.

Restore Documents:

  - Download Documents backup. Decrypt and extract it. Place the content in `$HOME/Documents`, as appropriate.
  - `chmod 700` on `$HOME/Documents` directory.

On Mail preferences:

  - Under Fonts & Colours, use fixed-width font for plain text messages.
  - Under Composing, use plain text for message format.

On Activity Monitor view:

  - Set update frequency to very often (1 sec).
