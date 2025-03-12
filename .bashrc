# Set TERM environment variable for accessing SSH-connected devices.
export TERM=xterm-256color

# Set vim mode for terminal.
set -o vi

# Aliases.
ff ()
{
	aerospace list-windows --all | fzf --bind 'enter:execute(bash -c "aerospace focus --window-id {1}")+abort'
}

alias cat="bat"

alias ls="eza --icons=never -l"

alias lz="lazygit"
alias lzy="lazygit"
alias lazy="lazygit"

alias grh="git reset --hard"

alias mactop="sudo mactop --color white"

alias updateall="brew update && brew upgrade && mise upgrade && uv tool upgrade --all"


# Enable mise integration.
eval "$(/opt/homebrew/bin/mise activate bash)"

# Enable fzf integration for fuzzy searching.
eval "$(fzf --bash)"

# Enable starship integration.
eval "$(starship init bash)"

# Finally, enable zoxide integration.
eval "$(zoxide init --cmd cd bash)"


# Run fortune on shell execution.
fortune
