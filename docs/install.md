# Installation

## Requirements

- **Neovim >= 0.11** (uses `vim.lsp.config`, the native LSP client)
- **git**, **make**, **gcc** (or another C compiler), **unzip**
- **ripgrep** — Telescope live grep
- **fd** — Telescope file search
- **tree-sitter CLI** — parser compilation
- **tmux**
- **A [Nerd Font](https://www.nerdfonts.com/)** — icons in the file tree,
  statusline, and dashboard. JetBrainsMono Nerd Font recommended.
- **xclip** or **wl-clipboard** — system clipboard (xclip on WSL)

## System dependencies by distro

### Ubuntu / Debian

```bash
sudo apt update
sudo apt install make gcc unzip curl git ripgrep fd-find tree-sitter-cli tmux
sudo apt install xclip            # WSL
sudo apt install xclip wl-clipboard # native Linux

# Neovim stable via PPA (Ubuntu's repo version is too old)
sudo add-apt-repository ppa:neovim-ppa/stable -y
sudo apt update
sudo apt install neovim

# Ubuntu ships fd as `fdfind`; Telescope expects `fd`
sudo ln -sf "$(command -v fdfind)" /usr/local/bin/fd
```

### Arch

```bash
sudo pacman -S --needed make gcc unzip curl git ripgrep fd tree-sitter-cli tmux neovim
sudo pacman -S --needed xclip wl-clipboard   # native Linux only
```

### Fedora

```bash
sudo dnf install -y make gcc unzip curl git ripgrep fd-find tree-sitter-cli tmux neovim
sudo dnf install -y xclip wl-clipboard       # native Linux only
```

### WSL (Ubuntu)

Same as Ubuntu, plus `xclip`. Clipboard works over WSLg or with an X server
(VcXsrv / GWSL). `install.sh` auto-detects WSL and skips `wl-clipboard`.

## Install

```bash
git clone https://github.com/SIDNEYHOLMES/SIDNVIM.git ~/.config/sidnvim
cd ~/.config/sidnvim
./install.sh
```

`install.sh` is idempotent-ish: it backs up any existing `~/.config/nvim` or
`~/.tmux.conf` to a `.bak.<timestamp>` file before symlinking, and skips the TPM
clone if it is already present.

## Nerd Font

Download from [nerdfonts.com](https://www.nerdfonts.com/). JetBrainsMono Nerd
Font is recommended. Install to `~/.local/share/fonts/`, run `fc-cache -fv`, then
set your terminal to use it.

## Post-install

1. **nvim** — first launch bootstraps lazy.nvim and installs all plugins
   automatically. LSP servers are installed by mason.nvim on demand (or run
   `:Mason` to install them manually). See `nvim/lua/plugins/lsp/mason.lua` for
   the `ensure_installed` list.
2. **tmux** — press `<prefix> + I` (`Ctrl+b` then `I`) to install the tmux
   plugins (tmux-sensible, tmux-resurrect) via TPM.
