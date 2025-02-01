# Load Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"

# Load local binaries to PATH.
export PATH="$HOME/.local/bin:$PATH"

# Enable bash autocompletion.
export BASH_COMPLETION_COMPAT_DIR="/usr/local/etc/bash_completion.d"
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# Added by OrbStack: command-line tools and integration
# Comment this line if you don't want it to be added again.
source ~/.orbstack/shell/init.bash 2>/dev/null || :

# Source for the .bashrc file.
[[ -s ~/.bashrc ]] && source ~/.bashrc

