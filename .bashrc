# vi mode for bash
set -o vi

# aliases
bundle() {
    osascript -e "id of app \"$1\""
}

alias finder="open -a Finder ."
alias cat="bat"
alias fd="fd --color=never"
alias find="fd --color=never"
alias lz="lazygit"

# enable starship prompt
eval "$(starship init bash)"

# mise integration
eval "$(mise activate bash)"

# fzf integration
eval "$(fzf --bash)"

# zoxide integration
eval "$(zoxide init --cmd cd bash)"
