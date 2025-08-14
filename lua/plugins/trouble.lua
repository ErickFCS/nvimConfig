return {
    {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("trouble").setup({})

            -- Keymaps
            vim.keymap.set("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<CR>", { desc = "Diagnostics (Trouble)" })
            vim.keymap.set("n", "<leader>xw", "<cmd>Trouble diagnostics toggle filter.buf=0<CR>", { desc = "Buffer diagnostics (Trouble)" })
            vim.keymap.set("n", "<leader>xr", "<cmd>Trouble lsp_references toggle<CR>", { desc = "LSP references (Trouble)" })
            vim.keymap.set("n", "<leader>xd", "<cmd>Trouble lsp_definitions toggle<CR>", { desc = "LSP definitions (Trouble)" })
            vim.keymap.set("n", "<leader>xt", "<cmd>Trouble todo toggle<CR>", { desc = "TODOs (Trouble)" })
        end,
    },
}

