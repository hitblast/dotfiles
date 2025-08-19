# Set vim mode for terminal.
set -o vi

# Add exit code-based color after prompt.
PROMPT_COMMAND=__prompt_command

__prompt_command() {
    local EXIT="$?"
    PS1=""

    local RCol='\[\e[0m\]'

    local Red='\[\e[0;31m\]'
    local Gre='\[\e[0;32m\]'

    if [ $EXIT != 0 ]; then
        PS1+="${Red}\u${RCol}"
    else
        PS1+="${Gre}\u${RCol}"
    fi

    PS1+="@\h \W$ "
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
