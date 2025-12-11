# dotfiles

Configuration files for my local development environment.

## Programs

These are the primary programs that are used in this configuration:

- Setup Wrapper: [cutler](https://github.com/machlit/cutler)
- Package Manager: [Homebrew](https://brew.sh)
- Tiling Window Manager: [AeroSpace](https://github.com/nikitabobko/AeroSpace)
- Default Shell: `/opt/homebrew/bin/bash`
- Development Tools:
  1. [mise](https://mise.jdx.dev) (view [mise.toml](.config/mise/config.toml))
  2. [uv](https://astral.sh/uv) (for Python projects and tools)

## Installation

1. Install the `cutler` CLI:

```bash
curl -fsSL https://machlit.github.io/scripts/install-cutler.sh | /bin/bash
```

2. Run the following command:

```bash
cutler apply -a --url https://raw.githubusercontent.com/hitblast/dotfiles/refs/heads/master/.config/cutler/config.toml --brew -y
```

3. Wait for all the processes to complete.

## Contributing

Since this is my personal configuration repository, I will not receive direct contributions to it. However, you may propose
an idea or a new setup implementation challenge through methods of discussion (e.g. GitHub Issues or Discussions).
