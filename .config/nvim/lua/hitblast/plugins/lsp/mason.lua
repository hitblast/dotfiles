return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        local mason = require("mason")
        local mason_lspconfig = require("mason-lspconfig")

        mason.setup({})
        mason_lspconfig.setup({
            ensure_installed = {
                "lua_ls",
                "pyright",
                "rust_analyzer",
                "ruff",
            },
        })

        -- keymaps for mason
        local keymap = vim.keymap

        keymap.set("n", "<leader>m", "<cmd>Mason<CR>", { desc = "Open mason window" })
    end,
}
