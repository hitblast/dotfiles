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

__git_branch_status_ps1() {
    branch="$(__git_branch_ps1)"
    if [ -z "$branch" ]; then
        return
    fi

    status=""
    # Check for unstaged changes
    if git diff --quiet 2>/dev/null; then
        :
    else
        status="*"
    fi
    # Check for pushable commits
    if git rev-parse --abbrev-ref @{u} >/dev/null 2>&1; then
        if [ -n "$(git log --oneline @{u}.. 2>/dev/null)" ]; then
            status="${status}!"
        fi
    fi

    # If both, show *!, if only one, show * or !
    if [ -n "$status" ]; then
        echo " ($(tput setaf 2)$status$branch$(tput sgr0))"
    else
        echo " ($(tput setaf 2)$branch$(tput sgr0))"
    fi
}
PS1='\u@\h:\w$(__git_branch_status_ps1)\$ '

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
