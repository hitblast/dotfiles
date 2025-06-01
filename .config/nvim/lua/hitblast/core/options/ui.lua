-- UI-related options for Neovim

vim.o.number = true
vim.o.relativenumber = true
vim.o.showmode = false
vim.o.signcolumn = 'yes'
vim.o.cursorline = true
vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.o.inccommand = 'split'
vim.o.updatetime = 250

-- Colorscheme and statusline are set up by plugins, but you can add more UI tweaks here if needed.
-- vim: ts=2 sts=2 sw=2 et
