return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- header for dashboard
    dashboard.section.header.val = {
      "                              ",
      "                              ",
      "                              ",
      "                              ",
      "    ▄   ████▄ ▄█ ██▄   ▄████  ",
      "     █  █   █ ██ █  █  █▀   ▀ ",
      "█     █ █   █ ██ █   █ █▀▀    ",
      " █    █ ▀████ ▐█ █  █  █      ",
      "  █  █         ▐ ███▀   █     ",
      "   █▐                    ▀    ",
      "   ▐                          ",
      "                              ",
      "                              ",
      "                              ",
    }

    -- set menu
    dashboard.section.buttons.val = {
      dashboard.button("e", "New file", "<cmd>ene<CR>"),
      dashboard.button("SPACE ee", "Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
      dashboard.button("SPACE ff", "Find file", "<cmd>Telescope find_files<CR>"),
      dashboard.button("SPACE fs", "Find string", "<cmd>Telescope live_grep<CR>"),
      dashboard.button("q", "Quit Neovim", "<cmd>qa<CR>"),
    }

    alpha.setup(dashboard.opts)

    -- disable folding on alpha buffer
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}
