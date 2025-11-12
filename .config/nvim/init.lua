-- vim opts
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.opt.termguicolors = true

-- useful for completions
-- this makes it easy to understand
vim.opt.completeopt = { "menuone", "noselect", "popup" }

-- always use system clipboard
vim.opt.clipboard = "unnamedplus"

-- relative line numbers
vim.wo.relativenumber = true

-- lazy setup
require("config.lazy")
