--[[
nvim-autopairs: Auto-close brackets, parens, quotes, and more

Typing ( [ { " ' ` inserts the matching closing pair. Uses treesitter
(check_ts) to avoid closing pairs inside comments and strings, and
integrates with nvim-cmp so that confirming an LSP completion like
`foo(` also inserts the closing paren.
--]]
return {
  'windwp/nvim-autopairs',
  event = 'InsertEnter',
  config = function()
    local autopairs = require('nvim-autopairs')

    autopairs.setup({
      check_ts = true, -- use treesitter: don't auto-close inside strings/comments
    })

    -- When nvim-cmp confirms a completion ending in an opening char
    -- (e.g. an LSP function name), insert the matching closing pair too.
    local cmp_autopairs = require('nvim-autopairs.completion.cmp')
    require('cmp').event:on('confirm_done', cmp_autopairs.on_confirm_done())
  end,
}
