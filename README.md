# dotfiles

Configuration files for my local development environment.

## Programs

These are the primary programs that are used in this configuration:

- Tiling Window Manager: [AeroSpace](https://github.com/nikitabobko/AeroSpace)
- Key Remapping: [Karabiner Elements](https://karabiner-elements.pqrs.org)
- Default Shell: `/opt/homebrew/bin/bash`
- Development Tools:
  1. mise (for Rust and other toolchains)
  2. uv (for Python environments)

## Prerequisites

The whole repository can be conveniently installed using [cutler](https://cutlercli.github.io/), a
macOS setup pipeline automation tool made by me to just be lazy when it comes to setting my laptop up.

## Installation

1. Install the [cutler](https://cutlercli.github.io) CLI:

```bash
curl -fsSL https://cutlercli.github.io/scripts/install.sh | /bin/bash
```

2. Run the following command:

```bash
cutler apply -a --url https://raw.githubusercontent.com/hitblast/dotfiles/refs/heads/master/.config/cutler/config.toml --brew -y
```

3. Wait for all the processes to complete.

## License

This repository is licensed under the [MIT License](./LICENSE).
