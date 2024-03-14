# Load Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"

# Added by OrbStack: command-line tools and integration
source ~/.orbstack/shell/init.zsh 2>/dev/null || :

# Set PATH, MANPATH, etc., for Homebrew.
export HOMEBREW_BREW_GIT_REMOTE="git@github.com:Homebrew/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="git@github.com:Homebrew/homebrew-core.git"
