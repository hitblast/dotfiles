return {
  "epwalsh/obsidian.nvim",
  version = "*",  -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",
  },
  opts = {
    workspaces = {
      {
        name = "initone",
        path = "~/initone",
      },
    },
    ui = {
      enable = false,
    },
    notes_subdir = "notes",
    daily_notes = {
      folder = "daily",
      template = "daily.md",
    },
    templates = {
      folder = "templates"
    },
    completion = {
      nvim_cmp = true,
      min_chars = 2,
    },
  },
}
