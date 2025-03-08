return {
    "goolord/alpha-nvim",
    event = "VimEnter",
    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        -- header for dashboard
        dashboard.section.header.val = {
            "",
            "",
            "",
            "",
            "",
            "",
            " ______  _______  ______ _     _ _______ _______ _______  ______",
            " |     \\ |_____| |_____/ |____/  |______    |    |_____| |_____/",
            " |_____/ |     | |    \\_ |    \\_ ______|    |    |     | |    \\_",
            "                                                                ",
            "",
        }

        -- set menu
        dashboard.section.buttons.val = {
            dashboard.button("e", "New file", "<cmd>ene<CR>"),
            dashboard.button("SPACE e", "Toggle file explorer", "<cmd>Neotree toggle<CR>"),
            dashboard.button("SPACE ff", "Find file", "<cmd>Telescope find_files<CR>"),
            dashboard.button("SPACE fs", "Find string", "<cmd>Telescope live_grep<CR>"),
            dashboard.button("SPACE l", "Open lazy window", "<cmd>Lazy<CR>"),
            dashboard.button("SPACE m", "Open mason window", "<cmd>Mason<CR>"),
            dashboard.button("q", "Quit Neovim", "<cmd>qa<CR>"),
        }

        alpha.setup(dashboard.opts)

        -- disable folding on alpha buffer
        vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
    end,
}
