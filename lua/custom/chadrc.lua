---@type ChadrcConfig 
 local M = {}
 M.ui = {theme = 'catppuccin'}
 M.plugins = "custom.plugins"
 M.mappings = require "custom.mappings"

local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
-- Use Treesitter for folding
o.foldmethod = 'expr'
o.foldexpr = 'nvim_treesitter#foldexpr()'

-- Set a high foldlevel to prevent folding everything on startup
o.foldlevel = 99
o.foldenable = true -- Enable folding by default

return M
