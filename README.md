# dotfiles
Configuration files for my local development environment

## Programs

These are the primary programs that are used in this configuration:

- Window Management (Tiling): AeroSpace
- Key Remapping: Karabiner Elements
- Development Tools:
    1. mise (for Flutter, Ruby & some Rust-based tools)
    2. uv (for Python environments)
    4. homebrew (for general package management)

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

# Install the required packages.
brew bundle
```

If everything has been installed, now you can use `stow` to create symlinks for the configuration files:

```bash
# Set up the symlinks.
stow . -t ~
```

I've created [cutler](https://github.com/hitblast/cutler) for automating the process of setting my system preferences.
Here's the command to set everything up:

```bash
# Set up macOS system settings.
cutler apply
```

- Part 2: Development setup

Now, we're gonna use [mise](https://mise.jdx.dev) to install all of our tools. We have installed it using `brew` in the previous step.

```bash
mise install
```

This will install rest of the required runtimes in this configuration.

- Part 3: Optionals

In my everyday setup, I like to use the built-in Touch ID feature of MacBooks when accessing the `sudo` command. To apply, simply run:

```bash
sed -e 's/^#auth/auth/' /etc/pam.d/sudo_local.template | sudo tee /etc/pam.d/sudo_local
```

See [this reference](https://dev.to/siddhantkcode/enable-touch-id-authentication-for-sudo-on-macos-sonoma-14x-4d28) for more information.
