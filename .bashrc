# Set TERM environment variable for accessing SSH-connected devices.
export TERM=xterm-256color

# Set vim mode for terminal.
set -o vi

# Enable mise integration.
eval "$(/opt/homebrew/bin/mise activate bash)"

# Enable fzf integration for fuzzy searching.
eval "$(fzf --bash)"

# Enable zoxide integration for easy cd.
eval "$(zoxide init --cmd cd bash)"

# Enable pay-respects integration.
eval "$(pay-respects bash --alias)"

# Integrate cargo environment.
. "$HOME/.cargo/env"

# Aliases.
ff ()
{
	aerospace list-windows --all | fzf --bind 'enter:execute(bash -c "aerospace focus --window-id {1}")+abort'
}

