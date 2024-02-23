-- vim.keymap.set("n", "<leader>wj", "NvimTmuxNavigateDown", { silent = true })
-- vim.keymap.set("n", "<F1>k", "NvimTmuxNavigateUp", { silent = true })
-- vim.keymap.set("n", "<F1>h", "NvimTmuxNavigateLeft", { silent = true })
-- vim.keymap.set("n", "<F1>l", "NvimTmuxNavigateRight", { silent = true })
--

return {

  "christoomey/vim-tmux-navigator",

  keys = {

    { "<leader>wh", "<cmd>TmuxNavigateLeft<cr>", desc = "Got to the left pane" },
    { "<leader>wj", "<cmd>TmuxNavigateDown<cr>", desc = "Got to the down pane" },
    { "<leader>wk", "<cmd>TmuxNavigateUp<cr>", desc = "Got to the up pane" },
    { "<leader>wl", "<cmd>TmuxNavigateRight<cr>", desc = "Got to the right pane" },
  },
}
