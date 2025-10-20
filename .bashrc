# Set vim mode for terminal.
# Interactive Vi mode for shell.
set -o vi

# Set prompt to show git branch if in a git repo.
__git_branch_ps1() {
    git branch --show-current 2>/dev/null
}

# Disable lazygit for Zed because I keep forgetting it.
if [ -n "$EDITOR" ]; then
    lazygit() {
        echo "git gud, lazygit disabled in editor"
        return 1
    }
fi

PS1='\u@\h:\w$(branch=$(__git_branch_ps1); [[ -n $branch ]] && echo " (\[$(tput setaf 2)\]$branch\[$(tput sgr0)\])")\$ '

# Aliases.
bundleid() {
    osascript -e "id of app \"$1\""
}

alias finder="open -a Finder ."
alias cat="bat"
alias fd="fd --color=never"
alias find="fd --color=never"
alias lz="lazygit"
alias mactop="sudo mactop --color white"

# Enable mise integration.
eval "$(/opt/homebrew/bin/mise activate bash)"

# Finally, enable zoxide integration.
eval "$(zoxide init --cmd cd bash)"
