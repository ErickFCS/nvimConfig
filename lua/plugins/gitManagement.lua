return {
  "lewis6991/gitsigns.nvim",
  enabled = true,
  cond = true,
  branch = "main",
  dependencies = {},
  lazy = true,
  keys = {
    {
      "<leader>ga",
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
    { "<leader>gn", "<cmd>Gitsigns next_hunk<CR>",    desc = "Next Git Hunk" },
    { "<leader>gN", "<cmd>Gitsigns prev_hunk<CR>",    desc = "Prev Git Hunk" },
    { "<leader>gp", "<cmd>Gitsigns preview_hunk<CR>", desc = "Preview hunk" },
    { "<leader>gb", "<cmd>Gitsigns blame_line<CR>",   desc = "Git blame line" },
    { "<leader>gd", "<cmd>Gitsigns diffthis<CR>",     desc = "Diff this" },
    { "<leader>gs", "<cmd>Gitsigns stage_hunk<CR>",   desc = "Stage hunk" },
    { "<leader>gr", "<cmd>Gitsigns reset_hunk<CR>",   desc = "Reset hunk" },
  },
  opts = {
    signcolumn         = false,
    numhl              = false,
    linehl             = false,
    word_diff          = false,
    current_line_blame = false,
  },
}
