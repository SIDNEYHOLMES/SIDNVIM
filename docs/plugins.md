# Plugins

Managed by [lazy.nvim](https://github.com/folke/lazy.nvim). Specs live in
`nvim/lua/plugins/`, grouped by category. Pinned versions are recorded in
`nvim/lazy-lock.json`.

## UI

| Plugin | Purpose |
| --- | --- |
| [tokyonight.nvim](https://github.com/folke/tokyonight.nvim) | Colorscheme |
| [alpha-nvim](https://github.com/goolord/alpha-nvim) | Dashboard / startup screen |
| [bufferline.nvim](https://github.com/akinsho/bufferline.nvim) | Buffer tabs |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | Statusline |
| [which-key.nvim](https://github.com/folke/which-key.nvim) | Keybinding popup |
| [mini.icons](https://github.com/echasnovski/mini.icons) / [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) | File icons |

## Editor

| Plugin | Purpose |
| --- | --- |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | Fuzzy finder (files, grep, buffers) |
| [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim) | File tree |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Syntax parsing + highlighting |
| [conform.nvim](https://github.com/stevearc/conform.nvim) | Formatting |
| [Comment.nvim](https://github.com/numToStr/Comment.nvim) | Commenting |
| [nvim-surround](https://github.com/kylechui/nvim-surround) | Surround text objects |
| [nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag) | Auto-close/rename HTML tags |
| [vim-visual-multi](https://github.com/mg979/vim-visual-multi) | Multi-cursor |
| [nvim-ufo](https://github.com/kevinhwang91/nvim-ufo) | Code folding (VSCode-style, treesitter provider) |

## LSP & completion

| Plugin | Purpose |
| --- | --- |
| [mason.nvim](https://github.com/williamboman/mason.nvim) | LSP server installer |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) | Completion engine |
| cmp-nvim-lsp / cmp-buffer / cmp-path / cmp-nvim-lua | Completion sources |
| [LuaSnip](https://github.com/L3MON4D3/LuaSnip) + [friendly-snippets](https://github.com/rafamadriz/friendly-snippets) | Snippets |

LSP servers are configured natively via `vim.lsp.config` (no nvim-lspconfig).
Installed servers: `bashls`, `cssls`, `html`, `lua_ls`, `omnisharp`, `pyright`,
`tailwindcss`, `ts_ls` (see `nvim/lua/plugins/lsp/mason.lua`).

## Language

| Plugin | Purpose |
| --- | --- |
| [obsidian.nvim](https://github.com/epwalsh/obsidian.nvim) | Obsidian vault integration |
| [vim-markdown](https://github.com/preservim/vim-markdown) | Markdown syntax |

## Git

| Plugin | Purpose |
| --- | --- |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | Inline diff signs |
| [neogit](https://github.com/NeogitOrg/neogit) | Magit-style Git UI |
| [diffview.nvim](https://github.com/sindrets/diffview.nvim) | Diff viewer |

## tmux

| Plugin | Purpose |
| --- | --- |
| [tpm](https://github.com/tmux-plugins/tpm) | Plugin manager |
| [tmux-sensible](https://github.com/tmux-plugins/tmux-sensible) | Sensible defaults |
| [tmux-resurrect](https://github.com/tmux-plugins/tmux-resurrect) | Save/restore sessions |
