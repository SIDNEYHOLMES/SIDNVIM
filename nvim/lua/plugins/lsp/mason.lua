return {
  {
    -- Load eagerly (not on `cmd`) so mason.nvim's setup() runs at startup
    -- and adds ~/.local/share/nvim/mason/bin to PATH. Without this, LSP
    -- servers fail with "<binary> is not executable" because they can't be
    -- found on PATH.
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    opts = {},
  },
  {
    -- Auto-install missing tools on startup. Note these are mason *package*
    -- names, not vim.lsp.config names (ts_ls -> typescript-language-server).
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    dependencies = { "williamboman/mason.nvim" },
    opts = {
      ensure_installed = {
        "bash-language-server",
        "css-lsp",
        "html-lsp",
        "lua-language-server",
        "omnisharp",
        "pyright",
        "tailwindcss-language-server",
        "typescript-language-server",
      },
    },
  },
}
