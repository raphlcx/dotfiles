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

For macOS Sonoma 14.

On a fresh macOS install, perform these changes in System Settings:

  - Trackpad: Set tap to click.
  - Trackpad: Set click to "light".
  - Trackpad: Set tracking speed until there are only 4 vertical bars visible to the right.
  - Trackpad: Disable smart zoom.
  - Keyboard: Set key repeat to fastest and repeat delay to shortest.
  - Keyboard: Under keyboard shortcuts > modifier keys, set Caps Lock as Escape key.
  - Keyboard: Under keyboard shortcuts > input sources, enable select next source in input menu (Ctrl+Alt+Space).
  - Keyboard: Under input sources, set to always show input menu in menu bar.
  - Keyboard: Under input sources, add simplified Chinese Pinyin.
  - Keyboard: Under input sources, disable automatic spelling correction.
  - Accessibility: Under Pointer Control > trackpad options, enable three finger drag.
  - Network: Turn on firewall. Enable stealth mode in firewall options.
  - General: Under Date & Time, use 24-hour time format.
  - General: Under Sharing, update computer's name as needed.
  - Control Centre: Set to always show Sound in menu bar.
  - Control Centre: Set to show Focus when active in menu bar.
  - Control Centre: Set to always hide Spotlight in menu bar.
  - Privacy & Security: Disable personalised ads under advertising.
  - Privacy & Security: Disable everything under analytics.
  - Desktop & Dock: Enable automatic hide and show dock.
  - Desktop & Dock: Disable recent applications in dock.
  - Lock Screen: Never start screen saver.
  - Lock Screen: Require password immediately after sleep.
  - Lock Screen: Login windows to show list of users.

On Desktop:

  - Remove all items on Dock.
  - On menu bar, use control centre to turn off AirDrop.

On Terminal:

  - Install Homebrew.
  - Install SDKMAN!.
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

## Firefox customisation

Windowing:

  - Ensure window take up whole screen

Customise toolbar:

  - Remove "Firefox View"
  - Remove "Save to Pocket"
  - Remove "Account"
  - Remove "Import bookmarks..." on bookmark bar
  - Remove spacers around address bar

Bookmarks:

  - Remove all items under Bookmarks Toolbar and Bookmarks Menu
  - Visit "about:profiles" on address bar and bookmark that page

Settings:

  - General

    - Under Language, uncheck "Check your spelling as you type"
    - Under Browsing, uncheck "Recommend extensions as you browse"
    - Under Browsing, uncheck "Recommend features as you browse"

  - Home

    - Under New Windows and Tabs, set both homepage and new tabs to "Blank page"

  - Search

    - Under Search Suggestions, uncheck "Show search suggestions"
    - Under Address Bar, uncheck everything except "Bookmarks"
    - Under Search Shortcuts, uncheck everything, and remove all search engines except Google.

  - Privacy & Security

    - Under Enhanced Tracking Protection, select "Strict"
    - Under Web Site Privacy Preferences, check "Tell web site not to sell or share my data"
    - Under Web Site Privacy Preferences, check "Send web sites a "Do Not Track" request"
    - Under Passwords, uncheck "Ask to save passwords"
    - Under Passwords, uncheck "Show alerts about passwords for breached web sites"
    - Under History, select "Use custom settings for history", and uncheck all boxes
    - Under HTTPS-Only Mode, select "Enable HTTPS-Only Mode in all windows"

Recommended, relies on third party services:

  - [Extension] Install "uBlock Origin"
  - [Privacy & Security] Enable DNS over HTTPS using "Increased Protection"
