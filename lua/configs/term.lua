return {
  { "folke/which-key.nvim",  enabled = false }, -- disable a default nvchad plugin

  -- If your opts uses a function call ex: require*, then make opts spec a function
  -- Then modify the opts arg
  -- {
  --   "nvim-telescope/telescope.nvim",
  --   opts = function(_, conf)
  --     conf.defaults.mappings.i = {
  --       ["<C-j>"] = require("telescope.actions").move_selection_next,
  --       ["<Esc>"] = require("telescope.actions").close,
  --     }

     -- or 
     -- table.insert(conf.defaults.mappings.i, your table)
    --   return conf
    -- end,
  -- }
}
-- local M = {}
--
-- M.general = {
--   n = {
--     -- Map <Space>T to the create new terminal
--     ["<Space>yh"] = { function()
--       require("nvchad.term").new { pos = "sp", size = 0.3 }
--     end, "Horizontal Terminal" },
--
--     ["<Space>yv"] = { function()
--       require("nvchad.term").new { pos = "vsp", cmd = "neofetch"}
--     end, "Vertical Terminal" },
--   },
--
--     -- toggleable terminals
--   nt = {
--     ["<leader>v"] = { function()
--       require("nvchad.term").toggle { pos = "vsp", id = "vtoggleTerm" }
--     end, "terminal toggleable vertical term" },
--
--     ["<leader>h"] = { function()
--       require("nvchad.term").toggle { pos = "sp", id = "htoggleTerm" }
--     end, "terminal toggleable horizontal term" },
--
--     ["<leader>tf"] = { function()
--       require("nvchad.term").toggle { pos = "float", id = "floatTerm" }
--     end, "terminal toggle floating term" },
--
--   },
-- }
--
-- return M
