return {
    "tiagovla/tokyodark.nvim",
    config = function()
        require("tokyodark").setup({})
        vim.cmd [[colorscheme tokyodark]]
    end,
}
