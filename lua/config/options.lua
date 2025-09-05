-- BASIC CONFIGURATION
vim.o.expandtab = true -- Uses spaces insted of tabs \t
vim.o.tabstop = 2 -- How much spaces does a \t uses
vim.o.shiftwidth = 2 -- How many spaces does a indent command of fold uses
vim.o.softtabstop = 2 -- How many spaces does the keys <Tab> and <BS> uses
vim.o.foldmethod = "indent"
vim.o.cursorline = false
vim.o.cursorcolumn = false
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

