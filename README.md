# SIDNVIM

My personal Neovim + tmux configuration — a single, documented source of
truth for programming and note taking (networking coming soon). Built to install cleanly on Linux / WSL.

Neovim config is a modular rewrite of
[kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim), organized into
`lua/config/` (options, keymaps, autocmds) and `lua/plugins/` (grouped by
category). tmux config uses [TPM](https://github.com/tmux-plugins/tpm) with a
Vim-style keybinding scheme.

## Quick start

```bash
git clone https://github.com/SIDNEYHOLMES/SIDNVIM.git ~/.config/sidnvim && cd ~/.config/sidnvim && ./install.sh
```

`install.sh`:

1. installs system dependencies (detects apt / dnf / pacman)
2. prompts for your **routes** (projects dir, notes/Obsidian vault) and writes
   them to a git-ignored `nvim/lua/config/local.lua`
3. symlinks `~/.config/nvim` and `~/.tmux.conf` into this repo (existing configs
   are backed up, not deleted)
4. clones TPM

Then launch `nvim` (lazy.nvim installs plugins on first run) and, in tmux, press
`<prefix> + I` to install tmux plugins.

## Layout

```
SIDNVIM/
├── install.sh              # one-command installer
├── nvim/                   # Neovim config (init.lua, lua/, lazy-lock.json)
├── tmux/tmux.conf          # tmux config
└── docs/                   # install, keymaps, plugins, customization
```

## Requirements

Neovim >= 0.11, git, make, gcc, unzip, ripgrep, fd, tree-sitter-cli, tmux, a
[Nerd Font](https://www.nerdfonts.com/), and `xclip`/`wl-clipboard` for the
clipboard. See [docs/install.md](docs/install.md) for the full per-distro list.

## Documentation

- [docs/install.md](docs/install.md) — per-distro install + post-install steps
- [docs/keymaps.md](docs/keymaps.md) — full keybinding reference
- [docs/plugins.md](docs/plugins.md) — what each plugin does
- [docs/customize.md](docs/customize.md) — routes, `local.lua`, adding plugins
