local formatters_by_ft = require("plugins.formatterManagement.formatters_by_ft")
local formatters_args = require("plugins.formatterManagement.formatters_args")

return {
  {
    "stevearc/conform.nvim",
    enabled = true,
    cond = true,
    branch = "master",
    dependencies = {},
    lazy = true,
    keys = {
      { "<leader>f", function() require("conform").format({ async = true, lsp_fallback = true }) end, desc = "Format buffer" },
    },
    opts = {
      formatters_by_ft = formatters_by_ft,
      formatters = formatters_args,
    },
  },
}
