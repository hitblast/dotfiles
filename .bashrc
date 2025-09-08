# Set vim mode for terminal.
set -o vi

# Add exit code-based color after prompt.
PROMPT_COMMAND=__prompt_command

__prompt_command() {
    local EXIT="$?"
    PS1=""

    local RCol='\[\e[0m\]'
    local Red='\[\e[0;31m\]'

    # Get current git branch, if any, and show if repo is modified.
    local git_branch=""
    local git_dirty=""
    if command -v git &>/dev/null; then
        git_branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
        if [ -n "$git_branch" ] && [ "$git_branch" != "HEAD" ]; then
            # Check if repo is dirty (modified).
            if git diff --quiet 2>/dev/null && git diff --cached --quiet 2>/dev/null; then
                git_dirty=""
            else
                git_dirty="*"
            fi
            git_branch=" (${git_branch}${git_dirty})"
        else
            git_branch=""
        fi
    fi

    # Change color for $ based on exit code.
    if [ $EXIT != 0 ]; then
        PS1+="\u@\h \W${git_branch}${Red}\$${RCol} "
    else
        PS1+="\u@\h \W${git_branch}\$ "
    fi
}

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
