# keybindings
KEYTIMEOUT=1
bindkey -v  # vi mode

# aliases
bundle() {
    osascript -e "id of app \"$1\""
}

alias finder='open -a Finder .'
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

bindkey -M viins '^P' autosuggest-accept

# call compinit
fpath=(~/.zsh/completions $fpath)
autoload -Uz compinit
compinit

export STM32CubeMX_PATH=/Applications/STMicroelectronics/STM32CubeMX.app/Contents/Resources
