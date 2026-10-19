return {
    {
        "sindrets/diffview.nvim",
        cmd = { "DiffviewOpen", "DiffviewFileHistory", "DiffviewClose" },
        keys = {
            { "<leader>gvd", "<cmd>DiffviewOpen<cr>", desc = "Diff working tree" },
            { "<leader>gvp", "<cmd>DiffviewOpen @{u}..HEAD<cr>", desc = "Review unpushed" },
            { "<leader>gvc", "<cmd>DiffviewFileHistory --range=@{u}..HEAD<cr>", desc = "Unpushed commits" },
            { "<leader>gvh", "<cmd>DiffviewFileHistory %<cr>", desc = "File history" },
            { "<leader>gvH", "<cmd>DiffviewFileHistory<cr>", desc = "Repo history" },
            { "<leader>gvq", "<cmd>DiffviewClose<cr>", desc = "Close diffview" },
        },
    },
}
