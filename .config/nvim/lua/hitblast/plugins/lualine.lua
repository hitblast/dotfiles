return {
  'nvim-lualine/lualine.nvim',
  config = function ()
    local lualine = require("lualine")

    lualine.setup({
      options = {
        icons_enabled = false,
        globalstatus = true,
        section_separators = '',
        component_separators = '',
      }
    })
  end,
}
