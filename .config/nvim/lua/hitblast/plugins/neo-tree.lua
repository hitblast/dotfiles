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
            event_handlers = {
                {
                    event = "neo_tree_buffer_enter",
                    handler = function(_)
                        vim.cmd([[
                            setlocal relativenumber
                        ]])
                    end,
                },
            },
        })

        -- keymaps for neo-tree
        local keymap = vim.keymap

        keymap.set("n", "<leader>ee", "<cmd>Neotree toggle<CR>", { desc = "Toggle file explorer " });
    end,
}
