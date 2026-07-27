# Vi mode
bindkey -v

# Aliases
bundle() {
    osascript -e "id of app \"$1\""
}

alias finder='open -a Finder .'
alias cat='bat'
alias fd='fd --color=never'
alias lz='lazygit'

# Starship
eval "$(starship init zsh)"

# fzf
eval "$(fzf --zsh)"

# direnv
eval "$(direnv hook zsh)"

# zoxide
eval "$(zoxide init --cmd cd zsh)"
