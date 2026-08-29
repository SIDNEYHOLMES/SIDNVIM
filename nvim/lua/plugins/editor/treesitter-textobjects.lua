--[[
nvim-treesitter-textobjects: syntax-aware text objects

NOTE: the current version of this plugin removed the old `keymaps`
config table. Keys are defined yourself via vim.keymap.set, calling
select_textobject().

Keeps the original bindings (af/if/ac/ic) working in visual and
operator-pending mode.
--]]
return {
  'nvim-treesitter/nvim-treesitter-textobjects',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  config = function()
    require('nvim-treesitter-textobjects').setup({
      select = {
        lookahead = true, -- jump forward to the textobj, like targets.vim
      },
    })

    local select = require('nvim-treesitter-textobjects.select')
    vim.keymap.set({ 'x', 'o' }, 'af', function()
      select.select_textobject('@function.outer', 'textobjects')
    end, { desc = 'select a function' })
    vim.keymap.set({ 'x', 'o' }, 'if', function()
      select.select_textobject('@function.inner', 'textobjects')
    end, { desc = 'select inner function' })
    vim.keymap.set({ 'x', 'o' }, 'ac', function()
      select.select_textobject('@class.outer', 'textobjects')
    end, { desc = 'select a class' })
    vim.keymap.set({ 'x', 'o' }, 'ic', function()
      select.select_textobject('@class.inner', 'textobjects')
    end, { desc = 'select inner class' })
  end,
}
