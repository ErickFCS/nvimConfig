local highlighters = require("plugins.lspFunctionality.highlighters")

return {
  {
    "folke/trouble.nvim",
    enabled = true,
    cond = true,
    branch = "main",
    dependencies = {
      "nvim-tree/nvim-web-devicons"
    },
    lazy = true,
    keys = {
      { "<leader>tx", "<cmd>Trouble diagnostics toggle<CR>",              desc = "Diagnostics (Trouble)" },
      { "<leader>tw", "<cmd>Trouble diagnostics toggle filter.buf=0<CR>", desc = "Buffer Diagnostics (Trouble)" },
      { "<leader>tr", "<cmd>Trouble lsp_references toggle<CR>",           desc = "LSP references (Trouble)" },
      { "<leader>td", "<cmd>Trouble lsp_definitions toggle<CR>",          desc = "LSP definitions (Trouble)" },
      { "<leader>tt", "<cmd>Trouble todo toggle<CR>",                     desc = "TODOs (Trouble)" },
      { "<leader>ts", "<cmd>Trouble symbols toggle focus=false<CR>",      desc = "Symbols (Sidebar)" },
    },
    opts = {},
  },
  {
    "nvim-mini/mini.nvim",
    enabled = true,
    cond = true,
    branch = "main",
    dependencies = {},
    lazy = false,
    keys = {},
    opts = {},
    config = function()
      -- Improve text objects
      require("mini.ai").setup()
      -- Add surround functionality
      require("mini.surround").setup()
      -- Auto insert closeing pair
      require("mini.pairs").setup()
      -- Easy commenting gc
      require("mini.comment").setup()
      -- Line move
      require("mini.move").setup()
      -- Highlights
      local highlight = require("mini.hipatterns")
      highlighters.hex_color = highlight.gen_highlighter.hex_color()
      highlight.setup({ highlighters = highlighters, })
      -- Makes the word under the cursor highlight everywhere
      require("mini.cursorword").setup()
      -- Highlight scope
      require("mini.indentscope").setup()
    end,
  },
}
