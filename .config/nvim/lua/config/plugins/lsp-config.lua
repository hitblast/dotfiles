return {
    {
        "mason-org/mason.nvim",
        opts = {},
    },
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {
            ensure_installed = { "lua_ls" },
        },
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            vim.api.nvim_create_autocmd("LspAttach", {
                callback = function(args)
                    local client = vim.lsp.get_client_by_id(args.data.client_id)
                    local bufnr = args.buf

                    vim.lsp.completion.enable(true, client.id, bufnr, {
                        autotrigger = true,
                        convert = function(item)
                            return { abbr = item.label:gsub("%b()", "") }
                        end,
                    })
                end,
            })

            local servers = {
                rust_analyzer = {
                    cmd = { vim.fn.expand("~/.config/cargo/bin/rust-analyzer") }, -- custom binary
                },
                lua_ls = {},
            }

            for name, config in pairs(servers) do
                vim.lsp.config[name] = config
                vim.lsp.enable(name)
            end
        end,
    },
}
