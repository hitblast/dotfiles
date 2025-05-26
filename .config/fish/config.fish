# ~/.config/fish/config.fish

# ————————————————————————————————
# Environment variables
# ————————————————————————————————

# Disable greetings
set fish_greeting ""

# Editor
set -x EDITOR nvim
set -x VISUAL nvim

# Currently, Ghostty isn't that recognized of a terminal
# So, set to xterm-256color for support during ssh sessions
set -x TERM xterm-256color

# Disable Homebrew auto update
set -x HOMEBREW_NO_AUTO_UPDATE 1

# Load Homebrew environment (PATH, PKG_CONFIG_PATH, etc.)
/opt/homebrew/bin/brew shellenv | source

# Add any local bin directory
set -x PATH $HOME/.local/bin $PATH

# ————————————————————————————————
# Aliases & functions
# ————————————————————————————————

function cat;    bat $argv; end
function lz;     lazygit $argv; end
function mactop; sudo mactop --color white $argv; end
function updateall
    brew update; and brew upgrade
    mise upgrade
    gh extensions upgrade --all
    uv tool upgrade --all
end

function bundleid
    osascript -e "id of app \"$argv[1]\""
end

# ————————————————————————————————
# Third‐party tools initialization
# ————————————————————————————————

# mise
mise activate fish | source

# uv
uv generate-shell-completion fish | source

# starship prompt
starship init fish | source

# zoxide
zoxide init --cmd cd fish | source
