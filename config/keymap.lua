local wezterm = require "wezterm"

local keymap = {}

function keymap.apply(config)
    config.keys = {
        {
            key = "n",
            mods = "ALT",
            action = wezterm.action.ToggleFullScreen,
        },
        -- 🔹 新建标签页  
        {
          key = 't',
          mods = 'ALT',
          action = wezterm.action.SpawnTab 'CurrentPaneDomain',
        },

        -- 🔹 切换到下一个标签页 
        {
          key = 'Tab',
          mods = 'CTRL',
          action = wezterm.action.ActivateTabRelative(1),
        },

        -- 🔹 切换到上一个标签页 
        {
          key = 'Tab',
          mods = 'CTRL|SHIFT',
          action = wezterm.action.ActivateTabRelative(-1),
        },

        -- 🔹 关闭当前标签页 
        {
          key = 'w',
          mods = 'CTRL',
          action = wezterm.action.CloseCurrentTab { confirm = false },
        },
    }
end

return keymap