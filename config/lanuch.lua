local wezterm = require "wezterm"

lanuch = {}

local shells = {
    {
        label = "pwsh",
        args = {"pwsh.exe"}
    }
}

function lanuch.apply(config)
    config.default_prog = shells[1].args
end


return lanuch