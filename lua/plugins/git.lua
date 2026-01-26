return {
  "lewis6991/gitsigns.nvim",
  keys = {
    {
      "<leader>ha",
      function()
        local gs = require("gitsigns")
        -- The first time this is pressed, Lazy loads the plugin.
        -- We then toggle the UI elements to 'true'.
        gs.toggle_signs()
        gs.toggle_numhl()
        -- gs.toggle_linehl()
        gs.toggle_word_diff()
        gs.toggle_current_line_blame()
      end,
      desc = "Master Toggle Git Gutter (and load plugin)",
    },
  },
  opts = {
    signcolumn         = false, -- Toggle with `:Gitsigns toggle_signs`
    numhl              = false, -- Toggle with `:Gitsigns toggle_numhl`
    linehl             = false, -- Toggle with `:Gitsigns toggle_linehl`
    word_diff          = false, -- Toggle with `:Gitsigns toggle_word_diff`
    current_line_blame = false, -- Like "GitLens" in VSCode

    on_attach          = function(bufnr)
      local gs = package.loaded.gitsigns
      -- Navigation
      vim.keymap.set('n', '<leader>hn', function()
        if vim.wo.diff then return ']c' end
        vim.schedule(function() gs.next_hunk() end)
        return '<Ignore>'
      end, { buffer = bufnr, expr = true, desc = "Next Git Hunk" })

      vim.keymap.set('n', '<leader>hN', function()
        if vim.wo.diff then return '[c' end
        vim.schedule(function() gs.prev_hunk() end)
        return '<Ignore>'
      end, { buffer = bufnr, expr = true, desc = "Prev Git Hunk" })

      -- Actions
      vim.keymap.set('n', '<leader>hp', gs.preview_hunk, { buffer = bufnr, desc = "Preview Hunk (Popup)" })
      vim.keymap.set('n', '<leader>hb', function() gs.blame_line { full = true } end,
        { buffer = bufnr, desc = "Git Blame Line" })
      vim.keymap.set('n', '<leader>hd', gs.diffthis, { buffer = bufnr, desc = "Diff This (Side-by-side)" })

      -- Resetting/Staging
      vim.keymap.set('n', '<leader>hs', gs.stage_hunk, { buffer = bufnr, desc = "Stage Hunk" })
      vim.keymap.set('n', '<leader>hr', gs.reset_hunk, { buffer = bufnr, desc = "Reset Hunk" })

      -- Your requested toggle
      vim.keymap.set('n', '<leader>ha', function()
        gs.toggle_signs()
        gs.toggle_numhl()
        -- gs.toggle_linehl()
        gs.toggle_word_diff()
        gs.toggle_current_line_blame()
      end, { buffer = bufnr, desc = "Toggle Git Gutter" })
    end
  },
}
