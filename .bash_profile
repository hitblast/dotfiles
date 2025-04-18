# Set TERM environment variable for accessing SSH-connected devices.
export TERM=xterm-256color

# Load local binaries to PATH.
export PATH="$HOME/.local/bin:$PATH"

# ---

# Load Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"
export HOMEBREW_NO_AUTO_UPDATE=1

# Enable bash autocompletion.
# Here, bash-completion@2 is set up because I'm not using system bash.
# Then, load homebrew autocompletions.

[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

if type brew &>/dev/null
then
  HOMEBREW_PREFIX="$(brew --prefix)"
  if [[ -r "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]]
  then
    source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
  else
    for COMPLETION in "${HOMEBREW_PREFIX}/etc/bash_completion.d/"*
    do
      [[ -r "${COMPLETION}" ]] && source "${COMPLETION}"
    done
  fi
fi

# Added by OrbStack: command-line tools and integration
# Comment this line if you don't want it to be added again.
source ~/.orbstack/shell/init.bash 2>/dev/null || :

# Source for the .bashrc file.
[[ -s ~/.bashrc ]] && source ~/.bashrc
