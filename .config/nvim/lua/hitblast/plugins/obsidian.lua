return {
    "epwalsh/obsidian.nvim",
    version = "*", -- recommended, use latest release instead of latest commit
    dependencies = {
        "nvim-lua/plenary.nvim",
        "hrsh7th/nvim-cmp",
        "nvim-telescope/telescope.nvim",
    },
    ft = "markdown",
    keys = {
        { "<leader>ot", "<cmd>ObsidianToday<CR>", desc = "Open today's daily note" },
        { "<leader>on", "<cmd>ObsidianNew<CR>", desc = "Create a new note" },
        { "<leader>fo", "<cmd>ObsidianSearch<CR>", desc = "Fuzzy find in Obsidian vault" },
    },
    config = function()
        local opts = {
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
            new_notes_location = "notes_subdir",
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
        }

        local obsidian = require('obsidian')
        obsidian.setup(opts)

        -- keymaps for obsidian.nvim
        local keymap = vim.keymap

        keymap.set("n", "<leader>ot", "<cmd>ObsidianToday<CR>", { desc = "Open today's daily note" })
        keymap.set("n", "<leader>on", "<cmd>ObsidianNew<CR>", { desc = "Create a new note" })
        keymap.set("n", "<leader>of", "<cmd>ObsidianSearch<CR>", { desc = "Search within Obsidian vault" })
    end,
}
