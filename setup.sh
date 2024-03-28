#! /bin/zsh


# Copy dotfiles.
echo "Copying dotfiles..."
DOTFILES=(.gitignore .hushlogin .zprofile .zshrc .p10k.zsh)

for dotfile in $(echo ${DOTFILES[*]});
do
    cp $(echo $dotfile) ~
done


# Setup Homebrew variables beforehand.
echo "Setting up Homebrew..."
export HOMEBREW_BREW_GIT_REMOTE="git@github.com:Homebrew/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="git@github.com:Homebrew/homebrew-core.git"

# Install Homebrew.
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"


# Load Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install Homebrew formulae.
echo "Installing Homebrew formulae..."
FORMULAE=$(<names/formulae.txt)

for formula in $(echo ${FORMULAE[*]});
do
    brew install $(echo $formula)
done

# Install Homebrew casks.
echo "Installing Homebrew casks..."
CASKS=$(<names/casks.txt)

for cask in $(echo ${CASKS[*]});
do
    brew install --cask $(echo $cask)
done


# Add autocompletion plugin for zsh.
echo "Adding autocompletion plugin for zsh..."
mkdir ~/Repos
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git ~/Repos/zsh-autocomplete

# Run macos_cfg.sh script to configure macOS settings.
echo "Configuring macOS settings..."
source macos_cfg.sh