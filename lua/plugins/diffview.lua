return {
    {
        "sindrets/diffview.nvim",
        cmd = { "DiffviewOpen", "DiffviewFileHistory", "DiffviewClose" },
        init = function()
            -- Make intra-line changes stand out against the changed-line background.
            -- Re-applied on ColorScheme because loading a colorscheme resets these groups.
            local function set_diff_hl()
                vim.api.nvim_set_hl(0, "DiffText", { bg = "#5a6fae", bold = true })
                vim.api.nvim_set_hl(0, "DiffChange", { bg = "#20243a" })
            end
            set_diff_hl()
            vim.api.nvim_create_autocmd("ColorScheme", { callback = set_diff_hl })
        end,
        keys = {
            { "<leader>gvd", "<cmd>DiffviewOpen<cr>", desc = "Diff working tree" },
            { "<leader>gvp", "<cmd>DiffviewOpen @{u}..HEAD<cr>", desc = "Review unpushed" },
            { "<leader>gvc", "<cmd>DiffviewFileHistory --range=@{u}..HEAD<cr>", desc = "Unpushed commits" },
            { "<leader>gvb", function()
                local ref = vim.fn.input("Diff against: ", "develop")
                if ref ~= "" then vim.cmd("DiffviewOpen " .. ref .. "...HEAD") end
            end, desc = "Diff branch vs ref (merge-base)" },
            { "<leader>gvh", "<cmd>DiffviewFileHistory %<cr>", desc = "File history" },
            { "<leader>gvH", "<cmd>DiffviewFileHistory<cr>", desc = "Repo history" },
            { "<leader>gvq", "<cmd>DiffviewClose<cr>", desc = "Close diffview" },
        },
    },
}
