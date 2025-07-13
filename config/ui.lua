local wezterm = require 'wezterm'

ui = {}

function ui.apply(config)
    
    -- colorscheme
    config.color_scheme = "Catppuccin Mocha"

    config.initial_cols = 128
    config.initial_rows = 28

    config.font = wezterm.font_with_fallback {
        {
            family = "JetBrains Mono",
            weight = "Bold",
            harfbuzz_features = { "calt = 0", "clig = 0", "liga = 0"},
        },
        {
            family = "霞鹜文楷等宽",
            weight = "Medium",
        },
        "Noto Color Emoji",
    }
    config.font_size = 12
    config.hide_tab_bar_if_only_one_tab = true

    config.window_padding = {
        left = 5,
        right = 5,
        top = 5,
        bottom = 5,
    }

    config.window_background_opacity = 0.6
end

return ui
