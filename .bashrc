# Set vim mode for terminal.
set -o vi

# Alias for seeing the grooving parrot once in a while.
alias parut = "curl parrot.live"

# Enable zoxide integration for easy cd.
eval "$(zoxide init --cmd cd bash)"

# Enable fzf integration for fuzzy searching.
eval "$(fzf --bash)"

# Run the fortune command on start.
echo -e "$(fortune)\n"
