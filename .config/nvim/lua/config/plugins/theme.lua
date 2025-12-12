return {
	'rebelot/kanagawa.nvim',
	config = function()
        require('kanagawa').setup({
            transparent = true,
            background = {
                dark = "dragon",
                light = "lotus"
            },
            compile = true,
            colors = {
                theme = {
                    all = {
                        ui = {
                            bg_gutter = "none"
                        }
                    }
                }
            }
        })

        vim.cmd.colorscheme('kanagawa')
	end
}
