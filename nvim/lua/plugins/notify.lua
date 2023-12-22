return {
  "rcarriga/nvim-notify",
    opts = {
      timeout = 1000,
      stages = "static",
      max_height = function()
        return math.floor(vim.o.lines * 0.25)
      end,
      max_width = function()
        return math.floor(vim.o.columns * 0.25)
      end,
      on_open = function(win)
        vim.api.nvim_win_set_config(win, { zindex = 100 })
      end,
    }
}
