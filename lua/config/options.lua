-- BASIC CONFIGURATION
vim.o.expandtab = true -- Uses spaces insted of tabs \t
vim.o.tabstop = 2 -- How much spaces does a \t uses
vim.o.shiftwidth = 2 -- How many spaces does a indent command of fold uses
vim.o.softtabstop = 2 -- How many spaces does the keys <Tab> and <BS> uses
vim.o.foldmethod = "indent"
vim.o.autoindent = true -- Wheather to insert indentation if on newline Default true
vim.o.smartindent = true -- Wheather to insert indentation intelligently
vim.o.ignorecase = true -- Ignorecase on search
vim.o.smartcase = true -- On search, if a Uppercase is present, disable ignorecase
vim.o.cursorline = false
vim.o.cursorcolumn = false
vim.o.number = true
vim.o.relativenumber = true
vim.o.statusline = "  %n | %f %r %m %{&filetype} | %= | %l:%c %p%% " 
vim.o.wrap = false -- Longer lines get wraped into newlines
vim.o.scrolloff = 5
vim.o.sidescrolloff = 5
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.autoread = true -- Wheather to autoread Default true
vim.o.swapfile = true -- Use swapfiles to prevent loss
-- vim.o.directory = "$XDG_STATE_HOME/nvim/swap//" -- Swapfiles location

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

-- TOOL CHANGE
if vim.fn.executable("rg") == 1 then
  vim.opt.grepprg = "rg --vimgrep --no-heading --smart-case"
  vim.opt.grepformat = "%f:%l:%c:%m"
end

-- EXTRA
vim.o.fileencoding = "" -- New files on utf-8 but keep files on what they are original on when editing/reading
vim.o.list = true
vim.o.listchars = "tab:→ ,trail:•,nbsp:␣,eol:↴,extends:›,precedes:‹,lead:·"
