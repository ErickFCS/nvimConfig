local ensure_installed = require("plugins.packageManagement.ensure_installed")

return {
  {
    "williamboman/mason.nvim",
    enabled = true,
    cond = true,
    branch = "main",
    dependencies = {},
    lazy = false,
    keys = {},
    opts = {},
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    enabled = true,
    cond = true,
    branch = "main",
    dependencies = {
      "williamboman/mason.nvim"
    },
    lazy = false,
    keys = {},
    opts = {
      auto_update = true,
      ensure_installed = ensure_installed,
      run_on_start = true,
    }
  },
}
