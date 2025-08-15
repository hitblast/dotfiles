# Set locale.
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_COLLATE=en_US.UTF-8

# Set TERM environment variable for accessing SSH-connected devices.
export TERM=xterm-256color

# Load local binaries to PATH.
export PATH="$HOME/.local/bin:$PATH"

# Also use uutils-coreutils to replace regular Unix commands.
export PATH="/opt/homebrew/opt/uutils-coreutils/libexec/uubin:$PATH"

# Keep only 50 commands in memory.
HISTSIZE=50

# Keep only 100 commands in ~/.bash_history.
HISTFILESIZE=100

# ---

# Load Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"
export HOMEBREW_NO_AUTO_UPDATE=1

# This is to ensure compliance with the custom cargo configuration.
export CARGO_HOME="$HOME/.config/cargo"

# Cache preprocessor steps in sccache for even faster compile times.
export SCCACHE_DIRECT=true

# Faster C/C++ compile times by utilizing sccache.
export CC="sccache clang"
export CXX="sccache clang++"

# ---

# bash-completion@2 implementation

# brew
[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

# git
source /opt/homebrew/opt/git/etc/bash_completion.d/git-completion.bash

# ---

# Added by OrbStack: command-line tools and integration
# Comment this line if you don't want it to be added again.
source ~/.orbstack/shell/init.bash 2>/dev/null || :

# Source for the .bashrc file.
[[ -s ~/.bashrc ]] && source ~/.bashrc
