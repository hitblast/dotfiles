# Editor
export EDITOR="vim"

# Cargo
export CARGO_HOME="$HOME/.config/cargo"

# Java
export JAVA_HOME="/Library/Java/JavaVirtualMachines/zulu-25.jdk/Contents/Home"

# Rust
export SCCACHE_CACHE_SIZE="40G"
export RUSTC_WRAPPER="sccache"

# Homebrew
export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_NO_ENV_HINTS=1
export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_ASK=1

# PATH
export PATH="$HOME/.local/bin:$PATH"
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:$CUSTOM_SDK_PATH/flutter/bin"
export PATH="$PATH:$HOME/.pub-cache/bin"

