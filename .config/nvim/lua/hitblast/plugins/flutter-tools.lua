return {
    'nvim-flutter/flutter-tools.nvim',
    ft = "dart",
    dependencies = {
        'nvim-lua/plenary.nvim',
        'stevearc/dressing.nvim',
    },
    config = function()
        local flutter_tools = require("flutter-tools")
        flutter_tools.setup({})

        -- keymaps for flutter-tools
        local keymap = vim.keymap

        keymap.set("n", "<leader>fle", "<cmd>FlutterRun<CR>", { desc = "Run Flutter project" })
        keymap.set("n", "<leader>flr", "<cmd>FlutterReload<CR>", { desc = "Reload running Flutter session" })
        keymap.set("n", "<leader>flR", "<cmd>FlutterRestart<CR>", { desc = "Restart Flutter session" })
        keymap.set("n", "<leader>flx", "<cmd>FlutterQuit<CR>", { desc = "Quit current Flutter session" })
    end,
}
