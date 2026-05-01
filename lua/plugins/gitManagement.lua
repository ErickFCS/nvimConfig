return {
  "lewis6991/gitsigns.nvim",
  enabled = true,
  cond = true,
  branch = "main",
  dependencies = {},
  lazy = true,
  keys = {
    {
      "<leader>ha",
      function()
        local gs = package.loaded.gitsigns
        if gs then
          gs.toggle_signs()
          gs.toggle_numhl()
          gs.toggle_linehl()
          gs.toggle_word_diff()
          gs.toggle_current_line_blame()
        end
      end,
      desc = "Master Toggle Git Gutter (and load plugin)",
    },
    { "<leader>hn", "<cmd>Gitsigns next_hunk<CR>",    desc = "Next Git Hunk" },
    { "<leader>hN", "<cmd>Gitsigns prev_hunk<CR>",    desc = "Prev Git Hunk" },
    { "<leader>hp", "<cmd>Gitsigns preview_hunk<CR>", desc = "Preview hunk" },
    { "<leader>hb", "<cmd>Gitsigns blame_line<CR>",   desc = "Git blame line" },
    { "<leader>hd", "<cmd>Gitsigns diffthis<CR>",     desc = "Diff this" },
    { "<leader>hs", "<cmd>Gitsigns stage_hunk<CR>",   desc = "Stage hunk" },
    { "<leader>hr", "<cmd>Gitsigns reset_hunk<CR>",   desc = "Reset hunk" },
  },
  opts = {
    signcolumn         = false,
    numhl              = false,
    linehl             = false,
    word_diff          = false,
    current_line_blame = false,
  },
}
