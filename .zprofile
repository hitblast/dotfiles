# Load Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"

# Add gnupg to PATH.
GPG_TTY=$(tty)
export GPG_TTY

# Add pyenv to PATH.
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

# Added by OrbStack: command-line tools and integration
source ~/.orbstack/shell/init.zsh 2>/dev/null || :

# Added by Toolbox App
export PATH="$PATH:/Users/hitblast/Library/Application Support/JetBrains/Toolbox/scripts"
