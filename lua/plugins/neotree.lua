return {
  "nvim-neo-tree/neo-tree.nvim",
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
        handler = function (arg)
          vim.cmd("normal! zR") 
        end,
        id = "unfold all",
      },
    }
  },
  -- config = function()
  -- vim.keymap.set("n", "<leader>n", "<cmd>Neotree toggle<CR>", { desc = "Toggle Neo-tree" })
  -- end,
}
