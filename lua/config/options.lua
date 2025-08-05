-- BASIC CONFIGURATION
vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.foldmethod = "indent"
vim.o.cursorline = true
vim.o.cursorcolumn = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.statusline = "  %n | %f %r %m %{&filetype} | %= | %l:%c %p%% " 
-- TRANSPARENT BACKGROUND
vim.cmd('hi Normal guibg=none')
vim.cmd('hi NonText guibg=none')
vim.cmd('hi Normal guibg=none')
vim.cmd('hi NormalNC guibg=none')
vim.cmd('hi NvimTreeNormal guibg=none')
vim.cmd('hi VertSplit guibg=none')
vim.cmd('hi SignColumn guibg=none')
vim.cmd('hi EndOfBuffer guibg=none')
vim.cmd('hi StatusLine guibg=none')
-- KEYMAPS

