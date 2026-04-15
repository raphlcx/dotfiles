# Skip adding duplicate command lines to history
setopt HIST_IGNORE_DUPS
# Write to history file incrementally
setopt INC_APPEND_HISTORY

# Use vi key binding
bindkey -v
# Emacs-style search
bindkey ^R history-incremental-search-backward

# Reduce zsh key timeout
export KEYTIMEOUT=1

# Shell prompt
export PS1='%~ %# '

# Set locale
export LANG=en_GB.UTF-8
export LC_ALL=en_GB.UTF-8

# Standard programs
export EDITOR=nvim
export PAGER=less
export BROWSER=/Applications/Firefox.app/Contents/MacOS/firefox

# fzf include hidden files and exclude certain directories
export FZF_DEFAULT_COMMAND='fd --type f --hidden --exclude .git'

# Reset PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# Include user binary path
export PATH="$HOME/.local/bin:$PATH"

# Homebrew
export HOMEBREW_CLEANUP_MAX_AGE_DAYS=7
## From $(brew shellenv)
export HOMEBREW_PREFIX="/opt/homebrew";
export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
export HOMEBREW_REPOSITORY="/opt/homebrew";
fpath[1,0]="/opt/homebrew/share/zsh/site-functions";
export FPATH;
eval "$(/usr/bin/env PATH_HELPER_ROOT="/opt/homebrew" /usr/libexec/path_helper -s)"
[ -z "${MANPATH-}" ] || export MANPATH=":${MANPATH#:}";
export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}";

# Python
export PATH="$HOME/Library/Python/3.9/bin:$PATH"

# gpg-agent tty
GPG_TTY=$(tty)
export GPG_TTY

# Aliases
alias g='git'
alias ll='gls -alv --group-directories-first'
alias pig='ping google.com'
alias ra='rain download --torrent'
alias v='nvim'

# Load completion
autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit
