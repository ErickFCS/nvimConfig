return {
  {
    "tiagovla/tokyodark.nvim",
    enabled = true,
    cond = true,
    branch = "master",
    dependencies = {},
    lazy = false,
    keys = {},
    opts = {},
    config = function()
      require("tokyodark").setup({})
      vim.cmd [[colorscheme tokyodark]]
    end,
  },
}
