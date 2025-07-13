local wezterm = require "wezterm"
local lanuch = require "config.lanuch"
local ui = require "config.ui"

local config = wezterm.config_builder()

-- lanuch
lanuch.apply(config)

-- ui
ui.apply(config)

return config