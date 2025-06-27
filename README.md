# dotfiles

Configuration files for my local development environment

## Programs

These are the primary programs that are used in this configuration:

- Window Management (Tiling): AeroSpace
- Key Remapping: Karabiner Elements
- Primary Shell Environment: `bash`
- Development Tools:
  1. mise (for Flutter, Ruby, Rust and other toolchains)
  2. uv (for Python environments)
  3. homebrew (for general package management)

## Installation

I have made [cutler](https://hitblast.github.io/cutler) to automate my entire macOS setup pipeline. Here's how it goes:

1. Install the `cutler` CLI:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/hitblast/cutler/main/install.sh)"
```

2. Run the following command:

```bash
cutler apply --with-brew
```

3. Wait for all the processes to complete.

## License

This project is licensed under the [MIT License](./LICENSE).
