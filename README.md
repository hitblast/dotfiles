# dotfiles
Configuration files for my local development environment

## Programs

These are the primary programs that are used in this configuration:

- Window Management (Tiling): AeroSpace
- Key Remapping: Karabiner Elements
- Primary Shell Environment: `fish`
- Development Tools:
    1. mise (for Flutter, Ruby & some Rust-based tools)
    2. uv (for Python environments)
    3. homebrew (for general package management)

## Requirements

- [Homebrew](https://brew.sh)
- [Rust](https://rust-lang.org)
- [Xcode Command-Line Tools](https://developer.apple.com/download/more/) (can be installed from within macOS using `xcode-select --install`)

## Installation

- Part 1: Basic environment

Install [Homebrew](https://brew.sh) and the required packages using the following group of commands:

```bash
# Install Homebrew.
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

For the next, make sure you've cloned this repository, since symlinking the files to their destination is mandatory.

Now, install `stow` using brew:

```bash
# Install.
brew install stow

# Set up the symlinks.
stow . -t ~
```

I've created [cutler](https://github.com/hitblast/cutler) for automating the process of setting my system preferences.
Here's the command to set everything up:

```bash
# Install cutler.
brew install cutler

# Set up macOS system settings.
cutler apply

# Also install the remaining brew formulae/casks.
cutler brew install
```

- Part 2: Development setup

Now, we're gonna use [mise](https://mise.jdx.dev) to install all of our tools. We have installed it using `brew` in the previous step.

```bash
mise install
```

This will install rest of the required runtimes in this configuration.
