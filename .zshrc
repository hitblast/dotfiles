# vi mode
bindkey -v

# aliases
bundle() {
    osascript -e "id of app \"$1\""
}

alias finder='open -a Finder .'
alias cat='bat'
alias fd='fd --color=never'
alias lz='lazygit'

# starship
eval "$(starship init zsh)"

# fzf
eval "$(fzf --zsh)"

# direnv
eval "$(direnv hook zsh)"

# zoxide
eval "$(zoxide init --cmd cd zsh)"

# homebrew completions
eval "$(/opt/homebrew/bin/brew shellenv)"
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# call compinit
autoload -Uz compinit
compinit
