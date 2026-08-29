--[[
nvim-treesitter: Treesitter parsers & highlighting

NOTE: This is the NEW (2025) nvim-treesitter rewrite. The old options
(ensure_installed / auto_install / highlight.enable / indent / textobjects)
were removed in this version. Parsers are installed on demand via
require('nvim-treesitter').install() and highlighting is enabled per
filetype with vim.treesitter.start().

- The plugin is NOT lazy-loaded: the rewrite doesn't support it.
- The parser install list below runs on startup; it's a no-op once the
  parsers are present. It waits synchronously the first time so that
  everything (autotag, highlighting) works immediately after.

nvim-treesitter-textobjects is configured in its own spec
(treesitter-textobjects.lua).
--]]
return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter").setup()

    -- Parsers wanted by nvim-ts-autotag.
    local parsers = {
      "lua", "vim", "vimdoc",
      "typescript", "javascript", "tsx",
      "html", "css",
      "bash",
      "python",
      "c_sharp",
      "markdown", "markdown_inline",
    }

    -- Install missing parsers synchronously (no-op when already installed).
    local ts = require("nvim-treesitter")
    local installed = ts.get_installed("parsers")
    local missing = vim.tbl_filter(function(p)
      return not vim.tbl_contains(installed, p)
    end, parsers)

    if #missing > 0 then
      vim.notify("Installing treesitter parsers: " .. table.concat(missing, ", "),
        vim.log.levels.INFO, { title = "nvim-treesitter" })
      ts.install(missing):wait(300000)
    end

    -- Enable treesitter highlighting for any filetype that has a parser.
    -- (The new nvim-treesitter no longer enables it globally on its own.)
    -- NOTE: get_parser returns nil (does not throw) when there's no parser
    -- for the filetype (e.g. neo-tree), so check the return value directly.
    vim.api.nvim_create_autocmd("FileType", {
      callback = function(args)
        if vim.treesitter.get_parser(args.buf) then
          vim.treesitter.start(args.buf)
        end
      end,
    })
  end,
}
