# Keymaps

Leader key is **Space**. Press `<leader>` and wait — which-key shows all
available commands grouped by prefix.

## Dashboard

| Key | Action |
| --- | --- |
| `<F1>` | Open dashboard (home screen) |

## Terminal

| Key | Action |
| --- | --- |
| `<Esc><Esc>` (in terminal) | Exit terminal mode back to normal mode |

## Window management

| Key | Action |
| --- | --- |
| `<C-h>` / `<C-j>` / `<C-k>` / `<C-l>` | Move between windows (like tmux) |
| `<leader>%` | Vertical split |
| `<leader>"` | Horizontal split |
| `<leader>&` | Close window |
| `<leader>r` | Resize mode — then `Shift+h/j/k/l` resize by 5, any other key exits |

## Navigation

| Key | Action |
| --- | --- |
| `<C-d>` / `<C-u>` | Scroll half-page, cursor stays centered |
| `n` / `N` | Next/previous search match, centered |
| `gx` | Open URL under cursor (auto-detect xdg-open / explorer.exe) |

## Buffer navigation

| Key | Action |
| --- | --- |
| `<leader>bn` | Next buffer |
| `<leader>bp` | Previous buffer |
| `<leader>bq` | Delete buffer |
| `<leader>bo` | Close other buffers |
| `<leader>b1`–`b9` | Go to 1st–9th listed buffer |

## Editing

| Key | Action |
| --- | --- |
| `J` / `K` (visual mode) | Move selected lines down/up with auto-indent |
| `<leader>f` | Format buffer (conform.nvim) |

## Multi-cursor (vim-visual-multi)

| Key | Action |
| --- | --- |
| `<C-n>` | Select cursor word |
| `<M-C-Down>` / `<M-C-Up>` | Add cursor down/up |
| `<M-m>` | Toggle multi-cursor mappings |

## Telescope (`<leader>f` group)

| Key | Action |
| --- | --- |
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep |
| `<leader>fb` | Buffers |
| `<leader>fh` | Help tags |
| `<leader>fp` | Projects |

## File tree (neo-tree)

| Key | Action |
| --- | --- |
| `<leader>e` | Toggle file tree |

## Git (`<leader>g` group)

| Key | Action |
| --- | --- |
| `<leader>gs` | Git status (Neogit) |
| `<leader>gl` | Git log (Neogit) |
| `<leader>gd` | Diffview (current vs HEAD) |
| `<leader>gb` | Blame line |
| `<leader>gSs` | Stage hunk |
| `<leader>gSr` | Reset hunk |
| `<leader>gSp` | Preview hunk |
| `<leader>gSt` | Toggle line blame |

## LSP

| Key | Action |
| --- | --- |
| `gd` | Go to definition |
| `gr` | References |
| `K` | Hover |
| `<leader>rn` | Rename |
| `<leader>ca` | Code action |
| `<leader>q` | Show diagnostic float |
| `[d` / `]d` | Previous / next diagnostic |

## Completion (nvim-cmp)

| Key | Action |
| --- | --- |
| `<C-Space>` | Trigger completion |
| `<C-n>` / `<C-p>` | Select next/previous item |
| `<Tab>` / `<S-Tab>` | Next/previous item, or expand/jump snippet |
| `<C-y>` / `<CR>` | Confirm selection |
| `<C-b>` / `<C-f>` | Scroll docs |
| `<C-e>` | Close popup |

## Obsidian (`<leader>o` group, markdown buffers)

| Key | Action |
| --- | --- |
| `gf` | Follow link under cursor |
| `<leader>oc` | Toggle checkbox |
| `<leader>on` | New note from template |
| `<leader>os` | Search vault |
| `<leader>oo` | Quick switch notes |
| `<leader>od` | Open today's daily note |
| `<leader>ob` | Show backlinks |
| `<leader>ol` | Open in Obsidian app |
| `<leader>op` | Paste image from clipboard |

## tmux

Prefix is `Ctrl+b` by default.

| Key | Action |
| --- | --- |
| `<prefix> h/j/k/l` | Select pane (Vim-style) |
| `<prefix> H/J/K/L` | Resize pane by 5 |
| `<prefix> I` | Install plugins (TPM) |
