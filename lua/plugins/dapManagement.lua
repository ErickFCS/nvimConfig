return {
  {
    "jay-babu/mason-nvim-dap.nvim",
    enabled = true,
    cond = true,
    branch = "main",
    dependencies = {
      "williamboman/mason.nvim",
      "mfussenegger/nvim-dap",
    },
    lazy = true,
    keys = {},
    opts = {
      ensure_installed = {},
      handlers = {
        function(config)
          require("mason-nvim-dap").default_setup(config)
        end,
      },
    },
  },
}
