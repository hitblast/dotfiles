return {
	'rebelot/kanagawa.nvim',
	config = function()
        require('kanagawa').setup({
            transparent = true,
            background = {
                dark = "dragon",
                light = "lotus"
            },
        })

        vim.cmd.colorscheme('kanagawa')
	end
}
