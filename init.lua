-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Set theme and make background for all windows transparent
vim.cmd.colorscheme("tokyonight")

local groups = {
    "Normal",
    "NormalNC",
    "NormalFloat",
    "SignColumn",
    "CursorColumn",
    "LineNr",
    "Folded",
    "EndOfBuffer",
    "VertSplit",
    "StatusLine",
    "StatusLineNC",
    "TabLine",
    "TabLineSel",
    "TabLineFill",
    "Pmenu",
    "PmenuSel",
    "PmenuSbar",
    "PmenuThumb",
    "Tooltip",
}

for _, g in ipairs(groups) do
    pcall(vim.api.nvim_set_hl, 0, g, { bg = "none" })
end

-- Subtle current-line highlight on top of the transparent background
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#292e42" })

local plugin_groups = {
    "NvimTreeNormal",
    -- "NvimTreeWinSeparator",
    "NeoTreeNormal",
    -- "NeoTreeFloatBorder",
    "TelescopeNormal",
    -- "TelescopeBorder",
    "WhichKeyFloat",
    "NotifyBackground",
    "MasonNormal",
    -- "FloatBorder",
}

for _, g in ipairs(plugin_groups) do
    pcall(vim.api.nvim_set_hl, 0, g, { bg = "none" })
end

-- force redraw to apply changes
vim.cmd("doautocmd ColorScheme")
