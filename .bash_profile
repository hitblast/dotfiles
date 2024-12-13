# Load Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"

# Load local binaries to PATH.
export PATH="$HOME/.local/bin:$PATH"

# Enable bash-completion@2.
export BASH_COMPLETION_COMPAT_DIR="/usr/local/etc/bash_completion.d"
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# Add gnupg to PATH.
GPG_TTY=$(tty)
export GPG_TTY

# Added by OrbStack: command-line tools and integration
# Comment this line if you don't want it to be added again.
source ~/.orbstack/shell/init.bash 2>/dev/null || :

# Add cargo environment (rust).
. "$HOME/.cargo/env"

# Add asdf environment.
. "$HOME/.asdf/asdf.sh"
. "$HOME/.asdf/completions/asdf.bash"

# Source for the .bashrc file.
[[ -s ~/.bashrc ]] && source ~/.bashrc

