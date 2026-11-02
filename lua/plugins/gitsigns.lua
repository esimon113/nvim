return {
    {
        "lewis6991/gitsigns.nvim",
        init = function()
            -- Re-applied on ColorScheme because loading a colorscheme clears custom groups.
            local function set_blame_hl()
                local sha_fg = vim.api.nvim_get_hl(0, { name = "Constant", link = false }).fg
                vim.api.nvim_set_hl(0, "BlameSha", { fg = sha_fg, bold = true })
                -- NonText is what GitSignsCurrentLineBlame links to by default.
                local muted_fg = vim.api.nvim_get_hl(0, { name = "NonText", link = false }).fg
                vim.api.nvim_set_hl(0, "BlameAuthor", { fg = muted_fg, bold = true })
            end
            set_blame_hl()
            vim.api.nvim_create_autocmd("ColorScheme", { callback = set_blame_hl })
        end,
        opts = {
            current_line_blame = true,
            current_line_blame_opts = {
                delay = 0,
            },
            -- Function form so the hash gets its own highlight; get_relative_time is gitsigns-internal API.
            current_line_blame_formatter = function(_, info)
                local muted = "GitSignsCurrentLineBlame"
                return {
                    { "  ", muted },
                    { info.author, "BlameAuthor" },
                    { ", " .. require("gitsigns.util").get_relative_time(info.author_time) .. " · ", muted },
                    { info.abbrev_sha, "BlameSha" },
                    { " · " .. info.summary, muted },
                }
            end,
        },
    },
}
