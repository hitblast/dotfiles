# Set locale.
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_COLLATE=en_US.UTF-8

# If not already set, set EDITOR to be vim.
if [ -z "$EDITOR" ]; then
    export EDITOR="vim"
fi

# Load local binaries to PATH.
# NOTE: This is needed especially for uv tools.
export PATH="$HOME/.local/bin:$PATH"

# ---

# Load Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"
export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_NO_ENV_HINTS=1
export HOMEBREW_NO_ANALYTICS=1

# This is to ensure compliance with the custom cargo configuration.
export CARGO_HOME="$HOME/.config/cargo"
export PATH="$PATH:$HOME/.cargo/bin/"

# ---

# Custom SDKs
export CUSTOM_SDK_PATH="$HOME/.sdks"

# Flutter path.
export PATH="$PATH:$CUSTOM_SDK_PATH/flutter/bin/"

# Java path.
export JAVA_HOME="/Library/Java/JavaVirtualMachines/zulu-25.jdk/Contents/Home"

# ---

# Cache preprocessor steps in sccache for even faster compile times.
export SCCACHE_DIRECT=true
export SCCACHE_CACHE_SIZE="40G"

# rust
export RUSTC_WRAPPER="sccache"

# c/cpp
export CC="sccache clang"
export CXX="sccache clang++"

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

# Add CARGO env.
. "/Users/hitblast/.config/cargo/env"

# Added by `rbenv init` on Sat May 16 13:55:24 +06 2026
eval "$(rbenv init - --no-rehash bash)"
