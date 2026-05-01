return {
  {
    "neovim/nvim-lspconfig",
    enabled = true,
    cond = true,
    branch = "master",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp",
    },
    lazy = true,
    keys = {
      { "<leader>ld", vim.diagnostic.open_float, desc = "Show diagnostics" },
      { "<leader>lr", vim.lsp.buf.rename, desc = "Rename symbol" },
      { "<leader>la", vim.lsp.buf.code_action, desc = "Code action" },
      { "<leader>lf", function() require("conform").format({ async = true, lsp_fallback = true }) end, desc = "Format buffer" },
    },
    opts = {},
    config = function()
      -- Enhance LSP capabilities for nvim-cmp
      local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())
      -- Loads the Mason LSP bridge
      require("mason-lspconfig").setup({})
      -- Apply capabilities to all servers (wildcard in nvim 0.11+)
      vim.lsp.config("*", { capabilities = capabilities, })

      -- Optional: configure a specific server if you want custom settings
      -- vim.lsp.config("lua_ls", {
      -- settings = {
      -- Lua = {
      -- runtime = { version = "LuaJIT" },
      -- diagnostics = { globals = { "vim" } },
      -- },
      -- },
      -- })
    end,
  },
}
