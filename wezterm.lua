local wezterm = require "wezterm"
local lanuch = require "config.lanuch"
local ui = require "config.ui"
local keymap = require "config.keymap"

local config = wezterm.config_builder()

-- keymap
keymap.apply(config)

-- lanuch
lanuch.apply(config)

-- ui
ui.apply(config)

return config