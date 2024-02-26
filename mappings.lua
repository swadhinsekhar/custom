---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

-- In order to disable a default keymap, use
M.disabled = {
  n = {
    ["<leader>fr"] = "",
  },
}

-- Your custom mappings
M.LspRefrences = {
  n = {
    ["<leader>fr"] = { "<cmd> Telescope lsp_references <CR>", "Telescope Reference" },
  },
}

-- M.copilot = {
--   i = {
--     ["<C-l>"] = {
--       function()
--         vim.fn.feedkeys(vim.fn['copilot#Accept'](), '')
--       end,
--       "Copilot Accept",
--       {replace_keycodes = true, nowait=true, silent=true, expr=true, noremap=true}
--     }
--   }
-- }

-- more keybinds!

return M
