-- vim opts
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- useful for completions
-- this makes it easy to understand
vim.opt.completeopt = { "menuone", "noselect", "popup" }

-- lazy setup
require("config.lazy")
