return {
  'lewis6991/gitsigns.nvim',
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local gitsigns = require("gitsigns")
    gitsigns.setup()

    -- keymaps for vim-gitgutter
    local keymap = vim.keymap

    keymap.set("n", "<leader>gh", "<cmd>Gitsigns preview_hunk<CR>", { desc = "Preview current hunk." })
    keymap.set("n", "<leader>gR", "<cmd>Gitsigns reset_hunk<CR>", { desc = "Reset current hunk." })
    keymap.set("n", "<leader>gb", "<cmd>Gitsigns toggle_current_line_blame<CR>", { desc = "Toggle git blame for current line." })
  end,
}
