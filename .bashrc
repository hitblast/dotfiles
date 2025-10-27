# vi mode for bash
set -o vi

# disable lazygit if I'm using code editor
# this is I think going to be zed by default
if [[ "$EDITOR" != "nvim" ]]; then
    function lazygit {
        echo "git gud, lazygit disabled in editor"
        return 1
    }
    function nvim {
        echo "git gud, nvim disabled in other editors"
        return 1
    }
fi

# aliases
bundle() {
    osascript -e "id of app \"$1\""
}

alias finder="open -a Finder ."
alias cat="bat"
alias fd="fd --color=never"
alias find="fd --color=never"
alias lz="lazygit"
alias mactop="sudo mactop --color white"

# git-specific aliases
alias gcam="git commit -a -m"
alias gaa="git add --all"
alias gp="git push"
alias gpf="git push --force"
alias gs="git status"
alias rewo="git commit --allow-empty --amend --only -m"
alias bruh="git reset --hard"

# enable starship prompt
eval "$(starship init bash)"

# mise integration
eval "$(mise activate bash)"

# fzf integration
eval "$(fzf --bash)"

# zoxide integration
eval "$(zoxide init --cmd cd bash)"
