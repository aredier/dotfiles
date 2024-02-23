-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("n", "<leader>ws", "<C-W>s", { desc = "Split window below", remap = true })
map("n", "<leader>wv", "<C-W>v", { desc = "Split window right", remap = true })
map("n", "<leader>wh", "<C-W>h", { desc = "go to pane to the left", remap = true })
map("n", "<leader>wj", "<C-W>j", { desc = "go to pane bellow", remap = true })
-- map("n", "<leader>wk", "<C-W>k", { desc = "go to pane above", remap = true })
map("n", "<leader>wl", "<C-W>l", { desc = "go to pane to the right", remap = true })
map("n", "<leader>wl", "<C-W>l", { desc = "go to pane to the right", remap = true })
map("v", "<leader>/", "<leader>gc", { desc = "comment line", remap = true })
