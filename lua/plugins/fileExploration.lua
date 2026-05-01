return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    enabled = true,
    cond = false,
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    lazy = true,
    keys = {
      { "<leader>n", "<cmd>Neotree toggle<CR>", desc = "Toggle Neo-tree" },
    },
    opts = {
      event_handlers = {
        {
          event = "after_render",
          handler = function()
            vim.cmd("normal! zR")
          end,
          id = "unfold all",
        },
      }
    },
  },
  {
    "nvim-mini/mini.files",
    enabled = true,
    cond = true,
    branch = "main",
    dependencies = {},
    lazy = true,
    keys = {
      { "<leader>e", function() if not MiniFiles.close() then MiniFiles.open() end end, },
    },
    opts = {
      windows = {
        preview = true,
        width_focus = 30,
        width_preview = 60,
      },
      options = {
        use_as_default_explorer = true,
      },
    },
  },
}
