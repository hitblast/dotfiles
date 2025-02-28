return {
  "epwalsh/obsidian.nvim",
  version = "*",  -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local obsidian = require('obsidian')

    obsidian.setup({
      workspaces = {
        {
          name = "fogmoor",
          path = "~/fogmoor",
        },
      },
      ui = {
        enable = false
      },
    })
  end,
}
