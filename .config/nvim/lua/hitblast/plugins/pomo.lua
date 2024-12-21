return {
  "epwalsh/pomo.nvim",
  version = "*",    
  lazy = true,
  cmd = { "TimerStart", "TimerRepeat", "TimerSession" },
  dependencies = {
    "rcarriga/nvim-notify",
  },
  opts = {}, 
  config = function()
    local pomo = require("pomo")

    pomo.setup({
      sessions = {
        study = {
          { name = "Study", duration = "40m" },
          { name = "Short Break", duration = "5m" },
          { name = "Study", duration = "40m" },
          { name = "Short Break", duration = "5m" },
          { name = "Study", duration = "40m" },
          { name = "Long Break", duration = "15m" },
        },
      },
    })
  end
}
