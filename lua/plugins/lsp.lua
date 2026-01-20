return {
  -- Mason core
  {
    "williamboman/mason.nvim",
    opts = {},
    -- config = function()
    --   require("mason").setup()
    -- end,
  },

  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    dependencies = { "williamboman/mason.nvim" },
    opts = {
      ensure_installed = {
        "angular-language-server",
        "bash-language-server",
        "clangd",
        "cobol-language-support",
        "css-lsp",
        "docker-language-server",
        "gh-actions-language-server",
        "html-lsp",
        "jdtls",
        "lua-language-server",
        "marksman",
        "mbake",
        "nomicfoundation-solidity-language-server",
        "prettierd",
        "pyright",
        "tombi",
        "typescript-language-server",
        "yaml-language-server",
      },
      auto_update = true,
      run_on_start = true,
    }
  },

  -- Core LSP
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      -- Enhance LSP capabilities for nvim-cmp
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

      -- Loads the Mason LSP bridge
      require("mason-lspconfig").setup({})

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

  -- Core formatter
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        javascript = { "prettierd" },
        typescript = { "prettierd" },
        html = { "prettierd" },
        htmlangular = { "prettierd" },
        css = { "prettierd" },
      },
    },
  },
}
