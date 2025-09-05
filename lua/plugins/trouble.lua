return {
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
    keys = {
      { "<leader>tx", "<cmd>Trouble diagnostics toggle<CR>",              desc = "Diagnostics (Trouble)" },
      { "<leader>tw", "<cmd>Trouble diagnostics toggle filter.buf=0<CR>", desc = "Buffer Diagnostics (Trouble)" },
      { "<leader>tr", "<cmd>Trouble lsp_references toggle<CR>",           desc = "LSP references (Trouble)" },
      { "<leader>td", "<cmd>Trouble lsp_definitions toggle<CR>",          desc = "LSP definitions (Trouble)" },
      { "<leader>tr", "<cmd>Trouble todo toggle<CR>",                     desc = "TODOs (Trouble)" },
    }
    -- config = function()
    --   require("trouble").setup({})
    --
    --   -- Keymaps
    --   vim.keymap.set("n", "<leader>tx", "<cmd>Trouble diagnostics toggle<CR>", { desc = "Diagnostics (Trouble)" })
    --   vim.keymap.set("n", "<leader>tw", "<cmd>Trouble diagnostics toggle filter.buf=0<CR>",
    --     { desc = "Buffer diagnostics (Trouble)" })
    --   vim.keymap.set("n", "<leader>tr", "<cmd>Trouble lsp_references toggle<CR>", { desc = "LSP references (Trouble)" })
    --   vim.keymap.set("n", "<leader>td", "<cmd>Trouble lsp_definitions toggle<CR>", { desc = "LSP definitions (Trouble)" })
    --   vim.keymap.set("n", "<leader>tt", "<cmd>Trouble todo toggle<CR>", { desc = "TODOs (Trouble)" })
    -- end,
  },
}
