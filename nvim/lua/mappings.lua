require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("i", "jk", "<ESC>")
map("n", ";", ":", { desc = "Enter command mode" })

-- save current session for the current directory
map("n", "<leader>qs", function()
  require("persistence").save()
end, { desc = "Save current session" })

-- select a session to load
map("n", "<leader>qS", function()
  require("persistence").select()
end, { desc = "Select session to load" })

-- load the last session
map("n", "<leader>ql", function()
  require("persistence").load({ last = true })
end, { desc = "Load last session" })

-- stop Persistence => session won't be saved on exit
map("n", "<leader>qd", function()
  require("persistence").stop()
end, { desc = "Stop Persistence"})

-- vim tmux navigator
map("n", "<C-h>", "<cmd>TmuxNavigateLeft<cr>")
map("n", "<C-j>", "<cmd>TmuxNavigateDown<cr>")
map("n", "<C-k>", "<cmd>TmuxNavigateUp<cr>")
map("n", "<C-l>", "<cmd>TmuxNavigateRight<cr>")
map("n", "<C-\\>", "<cmd>TmuxNavigatePrevious<cr>")


-- disable all terminal keybindings 
local M = {}
M.disabled = {
  n = {
    ["<M-h>"] = "",
    ["<M-v>"] = "",
    ["<leader>v"] = "",
    ["<leader>h"] = "",
  }
}

for mode, mappings in pairs(M.disabled) do
  for key, _ in pairs(mappings) do
    vim.keymap.del(mode, key)
  end
end
