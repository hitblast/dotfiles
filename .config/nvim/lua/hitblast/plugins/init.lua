local plugins = {}
local plugin_dir = vim.fn.stdpath 'config' .. '/lua/hitblast/plugins'
local scan = vim.loop.fs_scandir(plugin_dir)
if scan then
  while true do
    local name, _ = vim.loop.fs_scandir_next(scan)
    if not name then
      break
    end
    if name:sub(-4) == '.lua' and name ~= 'init.lua' then
      local mod = 'hitblast.plugins.' .. name:sub(1, -5)
      table.insert(plugins, require(mod))
    end
  end
end
return plugins
