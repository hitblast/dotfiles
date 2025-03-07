return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        local neotree = require("neo-tree")

        neotree.setup({
            filesystem = {
                filtered_items = {
                    hide_dotfiles = false,
                },
            },
            window = {
                position = "right",
            },
        })

        -- keymaps for neo-tree
        local keymap = vim.keymap

        keymap.set("n", "<leader>ee", "<cmd>Neotree toggle<CR>", { desc = "Toggle file explorer " });
    end,
}
