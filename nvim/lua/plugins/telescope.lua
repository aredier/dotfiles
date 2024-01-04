local Util = require("lazyvim.util")
return {
  "nvim-telescope/telescope.nvim",
  keys = {
    {"<leader>gr", "<cmd>Telescope oldfiles<cr>", desc = "[g]o to [r]ecent"},
    {"<leader>sf", Util.telescope("live_grep"), desc = "Grep (root dir)" },
    {"<leader>/", false},
  },
  opts = {
    defaults = {
      layout_strategy = "horizontal",
      layout_config = {
        horizontal = {
          prompt_position = "top",
        },
      },
      sorting_strategy = "ascending",
      --- other configs
    },
  }
}
