# dotfiles

## Prerequisites

- zsh
- git
- curl

## Install

```bash
git clone https://github.com/cuiko/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./init
```

The init script will automatically install `stow` and `mise`, stow all packages, and run `mise install` to set up tools.

## Packages

| Package | Description |
|---------|-------------|
| git     | git + delta config |
| lazygit | lazygit config |
| mise    | mise tool versions |
| ssh     | ssh config |
| tmux    | tmux config |
| vim     | vim config |
| zsh     | zsh + starship + oh-my-zsh |

## Manual stow/unstow

```bash
stow -d ~/.dotfiles -t ~ --no-folding zsh   # install
stow -d ~/.dotfiles -t ~ -D zsh             # uninstall
```
