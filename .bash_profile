# Load Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"

# Enable bash-completion@2.
export BASH_COMPLETION_COMPAT_DIR="/usr/local/etc/bash_completion.d"
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# Add gnupg to PATH.
GPG_TTY=$(tty)
export GPG_TTY

# Add pyenv to PATH.
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

# Added by OrbStack: command-line tools and integration
[ -f ~/.orbstack/shell/init.sh ] && source ~/.orbstack/shell/init.sh

# Added by: JetBrains Toolbox
export PATH="$PATH:/Users/hitblast/Library/Application Support/JetBrains/Toolbox/scripts"

# Source for the .bashrc file.
[[ -s ~/.bashrc ]] && source ~/.bashrc