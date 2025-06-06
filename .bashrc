# Set vim mode for terminal.
set -o vi

# Aliases.
bundleid() {
    osascript -e "id of app \"$1\""
}

alias cat="bat"
alias fd="fd --color=never"
alias lz="lazygit"
alias mactop="sudo mactop --color white"

# Git-specific aliases.
alias ga="git add"
alias gb="git branch"
alias gc="git commit"
alias gcl="git clone"
alias gd="git diff"
alias gi="git init"
alias gl="git log --all --graph --oneline --decorate"
alias gp="git push"
alias gs="git status --short"
alias gu="git pull"


# Enable mise integration.
eval "$(/opt/homebrew/bin/mise activate bash)"

# Enable fzf integration for fuzzy searching.
eval "$(fzf --bash)"

# Enable starship integration.
eval "$(starship init bash)"

# Finally, enable zoxide integration.
eval "$(zoxide init --cmd cd bash)"
