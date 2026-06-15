-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Make sure cursor is centered after search / gg / G
vim.keymap.set("n", "G", "Gzz", { noremap = true, desc = "Go to bottom and center" })
vim.keymap.set("n", "n", "nzz", { noremap = true })
vim.keymap.set("n", "N", "Nzz", { noremap = true })
vim.keymap.set("n", "*", "*zz", { noremap = true })
vim.keymap.set("n", "#", "#zz", { noremap = true })
vim.keymap.set("n", "g*", "g*zz", { noremap = true })
vim.keymap.set("n", "g#", "g#zz", { noremap = true })

-- dulicate line + comment out original
vim.keymap.set("n", "yc", "yy<cmd>normal gcc<CR>p", { noremap = true, desc = "Duplicate line and comment original" })

-- exit insert mode
vim.keymap.set("i", "jk", "<Esc>", { noremap = true, desc = "Exit insert mode with jk" })
vim.keymap.set("i", "jj", "<Esc>", { noremap = true, desc = "Exit insert mode with jj" })

-- Delete, Yank, or Change up to next quote (' or ")
vim.keymap.set(
  "n",
  "dq",
  "v/[\"'`]<CR><Left>d<cmd>nohlsearch<CR>",
  { noremap = true, desc = "Delete up to next quote" }
)
vim.keymap.set("n", "yq", "v/[\"'`]<CR><Left>y<cmd>nohlsearch<CR>", { noremap = true, desc = "Yank up to next quote" })
vim.keymap.set(
  "n",
  "cq",
  "v/[\"'`]<CR><Left>di<cmd>nohlsearch<CR>",
  { noremap = true, desc = "Change up to next quote" }
)
