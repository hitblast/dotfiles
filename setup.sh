#! /bin/bash

# DRY_RUN environment variable is only used for CI pipelines
# in order to test the integrity of the scripts.

# Copy dotfiles.
echo "Copying dotfiles..."
DOTFILES=(.gitignore .hushlogin .zprofile .zshrc .p10k.zsh)

for dotfile in $(echo ${DOTFILES[*]});
do
    cp $(echo $dotfile) ~
done

# Setup Homebrew variables beforehand.
echo "Setting up Homebrew..."

# Install Homebrew.
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Load Homebrew.
eval "$(`brew --prefix`/bin/brew shellenv)"

# Install Homebrew formulae.
echo "Installing Homebrew formulae..."
FORMULAE=$(<names/formulae.txt)

for formula in $(echo ${FORMULAE[*]});
do
    if [ "$DRY_RUN" = true ]; then
        brew install --dry-run $(echo $formula)
    else
        brew install $(echo $formula)
    fi
done

# Install Homebrew casks.
echo "Installing Homebrew casks..."
CASKS=$(<names/casks.txt)

for cask in $(echo ${CASKS[*]});
do
    if [ "$DRY_RUN" = true ]; then
        brew install --cask --dry-run $(echo $cask)
    else
        brew install --cask $(echo $cask)
    fi
done

# Install Oh My Zsh and Powerleve10k.
echo "Setting up Oh My Zsh and Powerlevel10k..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Add autocompletion plugin for zsh.
echo "Adding autocompletion plugin for zsh..."
mkdir $HOME/Repos
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $HOME/Repos/zsh-autocomplete

# Run macos_cfg.sh script to configure macOS settings.
# This runs only if the system is darwin-based and the shell is interactive.
if [[ "$OSTYPE" == "darwin"* && -t 0 ]]; then
    
    # Enable autohide dock.
    defaults write com.apple.dock "autohide" -bool "true" && killall Dock

    # Write defaults for opening blank files in TextEdit and other apps.
    defaults write -g NSShowAppCentricOpenPanelInsteadOfUntitledFile -bool false

    # Enable Touch ID-based sudo authentication.
    sed "s/^#auth/auth/" /etc/pam.d/sudo_local.template | sudo tee /etc/pam.d/sudo_local

else
    echo "Skipping macOS configuration script..."
fi
