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
curl -fsSL https://cutlercli.github.io/scripts/install.sh | /bin/bash
```

2. Run the following command:

```bash
cutler apply --url https://raw.githubusercontent.com/hitblast/dotfiles/refs/heads/master/.config/cutler/config.toml --with-brew -y
```

3. Wait for all the processes to complete.

## License

This repository is licensed under the [MIT License](./LICENSE).
