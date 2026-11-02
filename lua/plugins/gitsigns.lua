return {
    {
        "lewis6991/gitsigns.nvim",
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
                    { info.abbrev_sha, "Special" },
                    {
                        " ⋅"
                            .. info.author
                            .. ", "
                            .. require("gitsigns.util").get_relative_time(info.author_time)
                            .. " — "
                            .. info.summary,
                        muted,
                    },
                }
            end,
        },
    },
}
