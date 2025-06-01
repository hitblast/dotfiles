-- Editing-related options for Neovim

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.have_nerd_font = true

vim.o.mouse = 'a'
vim.o.breakindent = true
vim.o.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.updatetime = 250
vim.o.timeoutlen = 300
vim.o.confirm = true

vim.schedule(function()
  vim.o.clipboard = 'unnamedplus'
end)

-- List characters for whitespace visualization
vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- vim: ts=2 sts=2 sw=2 et
