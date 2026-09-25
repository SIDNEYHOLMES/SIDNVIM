--[[
nvim-ufo: modern folding UI, VSCode-style collapse of code blocks

Aggregates fold ranges from providers (doesn't fold itself). Configured to
use treesitter for syntax-aware function/block folding, with indent as a
fallback for files without a parser. Markdown is excluded so prose stays
flat.

NOTES:
- Requires the kevinhwang91/promise-async dependency.
- ufo's setup() sets foldmethod=expr + foldexpr on its own; don't set them
  here. We only set the fold-level/column options.
- Loaded eagerly (no `event`) so folding is active before the first buffer
  opens.
--]]
return {
  'kevinhwang91/nvim-ufo',
  dependencies = 'kevinhwang91/promise-async',
  config = function()
    -- VSCode-style: files open fully expanded, gutter shows a fold toggle.
    vim.o.foldcolumn = '1'
    vim.o.foldlevel = 99
    vim.o.foldlevelstart = 99
    vim.o.foldenable = true

    -- Chevron fold glyphs in the gutter (VSCode look).
    vim.o.fillchars = 'foldopen:,foldclose:'

    require('ufo').setup({
      provider_selector = function(bufnr, filetype, buftype)
        -- Keep prose flat: no folding in markdown (obsidian notes).
        if filetype == 'markdown' then return {} end
        return { 'treesitter', 'indent' }
      end,
      -- Fold indicator on the folded line: chevron + hidden line count.
      fold_virt_text_handler = function(virtText, lnum, endLnum, width, truncate)
        return { { (' %d lines'):format(endLnum - lnum), 'Comment' } }
      end,
    })

    -- Fold keybindings (native zc/zo/za/zC/zO work via foldmethod=expr).
    local map = vim.keymap.set
    map('n', 'zR', function() require('ufo').openAllFolds() end, { desc = 'Open all folds' })
    map('n', 'zM', function() require('ufo').closeAllFolds() end, { desc = 'Close all folds' })
    map('n', 'zK', function() require('ufo').peekFoldedLinesUnderCursor() end, { desc = 'Peek folded lines' })
  end,
}
