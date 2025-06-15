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
alias gaa="git add --all"
alias gb="git branch"
alias gch="git checkout"
alias gcl="git clone"
alias gl="git log --all --graph --oneline --decorate"
alias gp="git push"
alias gpn="git push --no-verify"
alias gt="git tag"
alias gpu="git pull"


# Enable mise integration.
eval "$(/opt/homebrew/bin/mise activate bash)"

# Enable fzf integration for fuzzy searching.
eval "$(fzf --bash)"

# Enable starship integration.
eval "$(starship init bash)"

# Finally, enable zoxide integration.
eval "$(zoxide init --cmd cd bash)"
