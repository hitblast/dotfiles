# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_NO_ENV_HINTS=1
export HOMEBREW_NO_ANALYTICS=1

# Additional PATH entries
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:$CUSTOM_SDK_PATH/flutter/bin"
export PATH="$PATH:$HOME/.pub-cache/bin"

# Cargo environment
[[ -f "$HOME/.config/cargo/env" ]] && source "$HOME/.config/cargo/env"
