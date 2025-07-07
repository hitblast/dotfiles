# dotfiles

Configuration files for my local development environment.

## Programs

These are the primary programs that are used in this configuration:

- Setup Pipeline: [cutler](https://cutlercli.github.io) (my own setup pipeline automation tool)
- Tiling Window Manager: [AeroSpace](https://github.com/nikitabobko/AeroSpace)
- Key Remapping: [Karabiner Elements](https://karabiner-elements.pqrs.org)
- Default Shell: `/opt/homebrew/bin/bash`
- Development Tools:
  1. mise (for Flutter, Ruby, Rust and other toolchains)
  2. uv (for Python environments)

## Installation

1. Install the `cutler` CLI:

```bash
/bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/hitblast/cutler/main/install.sh)"
```

2. Copy [.config/cutler/config.toml](https://github.com/hitblast/dotfiles/blob/master/.config/cutler/config.toml) to `~/.config/cutler/config.toml` in your machine.

3. Run the following command:

```bash
cutler apply --with-brew -y
```

3. Wait for all the processes to complete.

## License

This repository is licensed under the [MIT License](./LICENSE).
