return {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
        local gruvbox = require('gruvbox')

        gruvbox.setup({
            terminal_colors = true,
            dim_inactive = true,
            transparent_mode = false,
        })

        vim.cmd("colorscheme gruvbox")
    end,
}
