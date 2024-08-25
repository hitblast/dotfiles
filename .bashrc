# Enable thefuck bridge.
eval "$(thefuck --alias)"

# Set up fzf key bindings and fuzzy completion.
eval "$(fzf --bash)"

# Enable zoxide for cd command.
eval "$(zoxide init --cmd cd bash)"
