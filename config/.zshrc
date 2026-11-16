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

# zsh autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

bindkey -M viins '^P' autosuggest-accept

# esp32 development stuff using rustup target
export PATH="/Users/hitblast/.rustup/toolchains/esp/xtensa-esp-elf/esp-16.1.0_20260609/xtensa-esp-elf/bin:$PATH"
export LIBCLANG_PATH="/Users/hitblast/.rustup/toolchains/esp/xtensa-esp32-elf-clang/esp-21.1.3_20260408/esp-clang/lib"
