--[[
nvim-ts-autotag: Auto-close & auto-rename HTML/JSX tags

When you type <div> the closing </div> is inserted; editing the opening
tag renames the closing tag. Requires the treesitter parser for the
filetype (html / tsx / ...), installed via treesitter.lua.

NOTE: This is the v1.x rewrite of the plugin. The old `filetypes`
option no longer exists — the plugin auto-attaches to any filetype with
a matching tag config (html, typescriptreact, xml, svelte, ...).
--]]
return {
  'windwp/nvim-ts-autotag',
  event = { 'BufReadPost', 'BufNewFile' },
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  opts = {
    -- v1.x nests the options under `opts`; flat keys are the legacy form
    opts = {
      enable_rename = true,         -- rename closing tag when the opening tag is edited
      enable_close = true,          -- auto-close tags: <div> -> <div></div>
      enable_close_on_slash = true, -- </ inserts the matching closing tag
    },
  },
}
