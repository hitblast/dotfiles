local function detect_macos_bg()
  local result = vim.fn.system("defaults read -g AppleInterfaceStyle 2>/dev/null")
  return (result and result:match("Dark")) and "dark" or "light"
end

local function config()
  local plugin = require "no-clown-fiesta"

  vim.o.background = detect_macos_bg()

  local opts = {
    theme = vim.o.background,
  }

  plugin.load(opts)
end

return {
  "aktersnurra/no-clown-fiesta.nvim",
  priority = 1000,
  lazy = false,
  config = config,
}
