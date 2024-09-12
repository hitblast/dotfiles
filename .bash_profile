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
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Added by: JetBrains Toolbox
export PATH="$PATH:/Users/hitblast/Library/Application Support/JetBrains/Toolbox/scripts"

# Source for the .bashrc file.
[[ -s ~/.bashrc ]] && source ~/.bashrc

# Added by OrbStack: command-line tools and integration
# Comment this line if you don't want it to be added again.
source ~/.orbstack/shell/init.bash 2>/dev/null || :
