# Set vim mode for terminal.
set -o vi

# Enable zoxide integration for easy cd.
eval "$(zoxide init --cmd cd bash)"

# Run the fortune command on start.
echo -e "$(fortune)\n"
