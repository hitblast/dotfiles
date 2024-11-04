# Load Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"

# Enable bash-completion@2.
export BASH_COMPLETION_COMPAT_DIR="/usr/local/etc/bash_completion.d"
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# Add Flutter SDK to PATH.
export PATH="$HOME/.devel/flutter/bin:$PATH"

# Add gnupg to PATH.
GPG_TTY=$(tty)
export GPG_TTY

# Added by OrbStack: command-line tools and integration
# Comment this line if you don't want it to be added again.
source ~/.orbstack/shell/init.bash 2>/dev/null || :

# Add cargo environment.
. "$HOME/.cargo/env"

# Add ruby to PATH.
if [ -d "/opt/homebrew/opt/ruby/bin" ]; then
  export PATH=/opt/homebrew/opt/ruby/bin:$PATH
  export PATH=`gem environment gemdir`/bin:$PATH
fi

# Add rustup to PATH (rust).
export PATH="/opt/homebrew/opt/rustup/bin:$PATH"

# Source for the .bashrc file.
[[ -s ~/.bashrc ]] && source ~/.bashrc
