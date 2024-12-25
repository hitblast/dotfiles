local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "git@github.com:folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release of lazy.nvim
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("hitblast.plugins", {
  checker = {
    enabled = true,
    notify = true,
  },
  change_detection = {
    notify = false,
  },
})
