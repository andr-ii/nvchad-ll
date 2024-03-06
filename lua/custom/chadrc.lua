---@type ChadrcConfig
require "custom.filetypes"
require "custom.configs.remap"

local ui_conf = require('custom.configs.ui')

local M = {
  ui = ui_conf.ui,
  plugins = "custom.plugins"
}

ui_conf.override_hl()


return M
