local M = {}
local config = require "sigma_ui.config"

M.statusline = function()
  return require("sigma_ui.statusline").run(config.statusline)
end

M.tabufline = function()
  return require("sigma_ui.tabufline").run(config.tabufline)
end

M.setup = function()
  vim.opt.statusline = "%!v:lua.require('sigma_ui').statusline()"

  -- lazyload tabufline
  require "sigma_ui.tabufline.lazyload"(config.tabufline)
end

return M
