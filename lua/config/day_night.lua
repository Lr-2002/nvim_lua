local function set_colorscheme()
    local hour = tonumber(os.date("%H"))
    local night_colorscheme = "rose-pine-main"  -- Replace with your preferred light theme
    local day_colorscheme = "rose-pine-dawn"  -- Replace with your preferred dark theme
    print(hour)
    if hour >= 7 and hour < 19 then
        vim.cmd("colorscheme " .. day_colorscheme)
    else
        vim.cmd("colorscheme " .. night_colorscheme)
    end
end

-- Run the function on startup
set_colorscheme()

-- Optional: Automatically change the colorscheme periodically (every 30 minutes)
vim.defer_fn(function()
    set_colorscheme()
end, 1800000)
