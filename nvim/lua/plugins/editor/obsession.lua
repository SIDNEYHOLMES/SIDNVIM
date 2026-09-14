--[[
vim-obsession: Continuously maintain a Session.vim file in the current
working directory.

tmux-resurrect's `@resurrect-strategy-nvim 'session'` restores nvim by
running `nvim -S` when a Session.vim file is present in the pane's cwd.
vim-obsession keeps that file up to date as buffers/windows change, so
resurrect can bring the full nvim session back.
--]]
return {
  'tpope/vim-obsession',
}
