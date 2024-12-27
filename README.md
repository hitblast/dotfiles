# dotfiles
Configuration files for my local development environment

## Requirements

- [Homebrew](https://brew.sh)
- [Xcode Command-Line Tools](https://developer.apple.com/download/more/) (can be installed from within macOS using `xcode-select --install`)

## Installation

Set up the macOS-specific settings and configuration using the following group of commands:

```bash
# Clone the repository.
chmod +x macos-mods.sh

# Run the script.
./macos-mods.sh
```

Now, install [Homebrew](https://brew.sh) and the required packages using the following group of commands:

```bash
# Install Homebrew.
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install the required packages.
brew bundle
```

If everything has been installed, now you can use `stow` to create symlinks for the configuration files:

```bash
# Set up the symlinks.
stow . -t ~
```
