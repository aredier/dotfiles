return {
  {
    "nvim-lua/plenary.nvim",
  },
  {
    "TohePrimeagen/harpoon",
    keys = {
      {
        "<leader>ha",
        function()
          require("harpoon.mark").add_file()
        end,
        "[h]arpoon [a]dd file",
      },
      {
        "<leader>hd",
        function()
          require("harpoon.ui").toggle_quick_menu()
        end,
        "[h]arpoon [d]isplay menu",
      },
      {
        "<leader>1",
        function()
          require("harpoon.ui").nav_file(1)
        end,
        "[h]arpoon [d]isplay menu",
      },
      {
        "<leader>2",
        function()
          require("harpoon.ui").nav_file(2)
        end,
        "[h]arpoon [d]isplay menu",
      },
      {
        "<leader>3",
        function()
          require("harpoon.ui").nav_file(3)
        end,
        "[h]arpoon [d]isplay menu",
      },
    },
  },
}
