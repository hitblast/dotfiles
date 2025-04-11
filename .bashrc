# Set vim mode for terminal.
set -o vi

# Aliases.
ff() {
	aerospace list-windows --all | fzf --bind 'enter:execute(bash -c "aerospace focus --window-id {1}")+abort'
}

bundleid() {
    osascript -e "id of app \"$1\""
}

alias cat="bat"

alias ls="eza --icons=never -l"

alias lz="lazygit"
alias lzy="lazygit"
alias lazy="lazygit"

alias mactop="sudo mactop --color white"
alias minecraft="java -jar ~/.local/bin/launcher.jar"

alias updateall="brew update && brew upgrade && mise upgrade && uv tool upgrade --all"


# Enable mise integration.
eval "$(/opt/homebrew/bin/mise activate bash)"

# Enable fzf integration for fuzzy searching.
eval "$(fzf --bash)"

# Enable starship integration.
eval "$(starship init bash)"

# Finally, enable zoxide integration.
eval "$(zoxide init --cmd cd bash)"
