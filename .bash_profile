# Set locale.
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_COLLATE=en_US.UTF-8

# If not already set, set EDITOR to be nvim.
if [ -z "$EDITOR" ]; then
    export EDITOR="vim"
fi

# Load local binaries to PATH.
export PATH="$HOME/.local/bin:$PATH"

# Load Android platforms-tools to PATH.
export PATH="$HOME/Library/Android/sdk/platform-tools:$PATH"

# ---

# Load Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"
export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_NO_ENV_HINTS=1
export HOMEBREW_NO_ANALYTICS=1

# This is to ensure compliance with the custom cargo configuration.
export CARGO_HOME="$HOME/.config/cargo"

# Cache preprocessor steps in sccache for even faster compile times.
export SCCACHE_DIRECT=true

# Faster C/C++ compile times by utilizing sccache.
export CC="sccache clang"
export CXX="sccache clang++"

# Remove cutler warning/hints.
export CUTLER_NO_HINTS=1

# ---

# bash-completion@2 implementation

# brew
[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

# git
source /opt/homebrew/opt/git/etc/bash_completion.d/git-completion.bash

# ---

# Source for the .bashrc file.
[[ -s ~/.bashrc ]] && source ~/.bashrc

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init.bash 2>/dev/null || :
