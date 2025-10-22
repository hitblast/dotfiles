# vi mode for bash
set -o vi

# set prompt function
__git_branch_ps1() {
    git branch --show-current 2>/dev/null
}

# disable lazygit if I'm using code editor
# this is I think going to be zed by default
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
    # unstaged changes = *
    if git diff --quiet 2>/dev/null; then
        :
    else
        status="*"
    fi
    # pushable change = !
    if git rev-parse --abbrev-ref @{u} >/dev/null 2>&1; then
        if [ -n "$(git log --oneline @{u}.. 2>/dev/null)" ]; then
            status="${status}!"
        fi
    fi

    # if both, show *!, if only one, show * or !
    if [ -n "$status" ]; then
        echo " ($(tput setaf 2)$status$branch$(tput sgr0))"
    else
        echo " ($(tput setaf 2)$branch$(tput sgr0))"
    fi
}
PS1='\u@\h:\w$(__git_branch_status_ps1)\$ '

# aliases
bundle() {
    osascript -e "id of app \"$1\""
}

alias rq="cargo run -q"
alias finder="open -a Finder ."
alias cat="bat"
alias fd="fd --color=never"
alias find="fd --color=never"
alias lz="lazygit"
alias mactop="sudo mactop --color white"

# git-specific aliases
alias gcam="git commit -a -m"
alias gp="git push"
alias gpf="git push --force"
alias gs="git status"
alias gl="git log"
alias gr="git commit --allow-empty --amend --only -m"

# mise integration
eval "$(/opt/homebrew/bin/mise activate bash)"

# zoxide integration
eval "$(zoxide init --cmd cd bash)"
