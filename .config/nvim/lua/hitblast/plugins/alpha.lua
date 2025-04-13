return {
    "goolord/alpha-nvim",
    event = "VimEnter",
    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        -- header for dashboard
        dashboard.section.header.val = {
            "",
            "                   ___ _     _       ",
            " ___ ___ ___ _ _ _|  _| |___| |_ ___ ",
            "|_ -|   | . | | | |  _| | .'| '_| -_|",
            "|___|_|_|___|_____|_| |_|__,|_,_|___|",
            "",
        }

        -- set menu
        dashboard.section.buttons.val = {
            dashboard.button("e", "New file", "<cmd>ene<CR>"),
            dashboard.button("SPACE e", "Toggle file explorer", "<cmd>Neotree toggle<CR>"),
            dashboard.button("SPACE ff", "Find file", "<cmd>Telescope find_files<CR>"),
            dashboard.button("SPACE fs", "Find string", "<cmd>Telescope live_grep<CR>"),
            dashboard.button("q", "Quit Neovim", "<cmd>qa<CR>"),
        }

        alpha.setup(dashboard.opts)

        -- disable folding on alpha buffer
        vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
    end,
}
