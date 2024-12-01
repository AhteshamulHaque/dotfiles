-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "vscode_dark",

	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}

M.ui = {
  statusline = {
    theme = "minimal",
    separator_style = "round",
    order = { "mode", "file", "git", "%=", "lsp_msg", "%=","msg", "diagnostics", "lsp", "cwd", "cursor" },
      modules = {
        msg = function()
          return ""
        end,

        f = "%F"
      }
  },
}
return M
