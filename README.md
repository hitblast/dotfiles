[![Dry Run](https://github.com/hitblast/dotfiles/actions/workflows/dryrun.yml/badge.svg)](https://github.com/hitblast/dotfiles/actions/workflows/dryrun.yml)

## 🛠️ Used Configuration

- **Computer**: MacBook Air M1 (Late 2020)
- **OS (latest commit)**: macOS 14.4 Sonoma
- **Shell**: zsh

## ⚡ Setup

Open a new terminal (must use `zsh` as primary shell), then run the following command:

```sh
# Grant execute permission to the script
chmod +x setup.sh

# Run the script
./setup.sh
```

## Available Functions / Commands

| Function                  | Description                                                    |
| ------------------------- | -------------------------------------------------------------- |
| `tagauto <ver-num> <msg>` | Automatically tag and sign latest commit, then push to origin. |
| `rmbrewcache`             | Remove all cache files from Homebrew.                          |
