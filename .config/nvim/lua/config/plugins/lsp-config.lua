return {
  {
    'mason-org/mason.nvim',
    opts = {},
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "lua_ls",
        "basedpyright",
        "rust_analyzer",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
        local lspconfig = vim.lsp

        lspconfig.enable("lua_ls")
        lspconfig.enable("basedpyright")
        lspconfig.enable("rust_analyzer")
    end
  },
}
