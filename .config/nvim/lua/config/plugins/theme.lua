return {
  "navarasu/onedark.nvim",
  priority = 1000,
  config = function()
    require('onedark').setup {
      style = 'light'
    }
    -- Enable theme
    require('onedark').load()
  end
}
