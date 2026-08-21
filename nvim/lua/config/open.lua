-- Cross-platform "open" helper.
--
-- Resolves the command used to open URLs / files in the system default
-- handler. Reads `open_cmd` from config.local (see local.lua.example) or
-- auto-detects:
--   WSL           -> explorer.exe
--   native Linux  -> xdg-open
--
-- Mac / Windows support is intentionally deferred; add cases here when
-- needed without touching every call site.
local M = {}

local function load_local()
  local ok, conf = pcall(require, 'config.local')
  return ok and conf or {}
end

function M.is_wsl()
  if vim.fn.has 'wsl' == 1 then return true end
  local ok, out = pcall(vim.fn.systemlist, { 'uname', '-r' })
  return ok and out[1] and out[1]:lower():match 'microsoft' ~= nil
end

-- The open command, resolved once per call from local config or detection.
function M.cmd()
  local conf = load_local()
  local cmd = conf.open_cmd or 'auto'
  if cmd ~= 'auto' then return cmd end
  return M.is_wsl() and 'explorer.exe' or 'xdg-open'
end

-- Open a URL or path in the system default handler.
function M.open(url)
  vim.fn.jobstart { M.cmd(), url }
end

return M
