return {
    "rebelot/kanagawa.nvim",
    config = function()
        -- Detect system theme using vim.o.background
        local variant = (vim.o.background == "light") and "kanagawa-lotus" or "kanagawa-wave"
        vim.cmd.colorscheme(variant)
    end,
}
