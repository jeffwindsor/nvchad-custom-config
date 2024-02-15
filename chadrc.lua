---@type ChadrcConfig
local M = {}

M.plugins = 'custom.plugins'

M.mappings = {
  abc = {
    n = {["<leader>q"] = {"<cmd>qa! <CR>", "Quit All"},},
  }
}

M.ui = {
  theme = 'jellybeans',
}

return M
