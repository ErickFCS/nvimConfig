return {
  {
    "echasnovski/mini.nvim",
    version = "*", -- Use the latest development version
    config = function()
      -- Improve text object allowing better seelct inside
      require('mini.ai').setup()
      -- easy change of surrounding quotes
      require('mini.surround').setup()
      -- Auto insert closeing pair
      require('mini.pairs').setup()
    end,
  },
}
