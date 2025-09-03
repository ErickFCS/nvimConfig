return {
    -- Mason core
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },

    -- Mason LSPConfig bridge
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = { "williamboman/mason.nvim", "neovim/nvim-lspconfig" },
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "pyright", "ts_ls", "clangd", "html", "cssls", "jdtls", "bashls", },
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
                vim.lsp.buf.format({ async = true })
            end, { desc = "Format buffer" })
        end,
    },

    -- Core LSP
    {
        "neovim/nvim-lspconfig",
    },
}
