return {
  -- Mason core
  {
    "williamboman/mason.nvim",
    opts = {},
    -- config = function()
    --   require("mason").setup()
    -- end,
  },

  -- Mason LSPConfig bridge
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim", "neovim/nvim-lspconfig" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "angularls",
          "bashls",
          "clangd",
          "cobol_ls",
          "cssls",
          "docker_language_server",
          "gh_actions_ls",
          "html",
          "jdtls",
          "lua_ls",
          "marksman",
          "mbake",
          "prettierd",
          "pyright",
          "solidity_ls_nomicfoundation",
          "tombi",
          "ts_ls",
          "yamlls",
        },
        automatic_installation = true,
        automatic_enable = true,
      })

      -- Enhance LSP capabilities for nvim-cmp
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

      -- Apply capabilities to all servers (wildcard in nvim 0.11+)
      vim.lsp.config("*", {
        capabilities = capabilities,
      })

      -- Optional: configure a specific server if you want custom settings
      -- vim.lsp.config("lua_ls", {
      -- settings = {
      -- Lua = {
      -- runtime = { version = "LuaJIT" },
      -- diagnostics = { globals = { "vim" } },
      -- },
      -- },
      -- })

      -- Keymaps for LSP actions
      vim.keymap.set("n", "<leader>ld", vim.diagnostic.open_float, { desc = "Show diagnostics" })
      vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, { desc = "Rename symbol" })
      vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action, { desc = "Code action" })
      vim.keymap.set("n", "<leader>lf", function()
        require("conform").format({
          async = true,
          lsp_fallback = true -- This is the magic: it uses LSP if no formatter is defined.
        })
      end, { desc = "Format buffer" })
    end,
  },

  -- Core LSP
  {
    "neovim/nvim-lspconfig",
  },

  -- Core formatter
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        javascript = { "prettierd" },
        typescript = { "prettierd" },
        html = { "prettierd" },
        css = { "prettierd" },
      },
    },
  },
}
