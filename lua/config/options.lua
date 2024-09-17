local opt = vim.opt

-- Tabs / Indentation
opt.tabstop = 2 -- a number of spaces of a tab character
opt.shiftwidth = 2 -- sets a number of levels for each indetion
opt.softtabstop = 2 -- same as tabstop but in insert mode
opt.expandtab = true -- 
opt.smartindent = true
opt.wrap = false -- set to false because if we have long lines we dont want those lines to start wrapping under 

-- Search 
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false

-- Appearance
opt.relativenumber = true
opt.termguicolors = true
opt.colorcolumn = '100'
opt.signcolumn = 'yes'
opt.cmdheight = 1
opt.scrolloff = 10
opt.completeopt = "menuone,noinsert,noselect"

-- Behaviours
opt.hidden = true
opt.errorbells = false
opt.swapfile = false
opt.backup = false
opt.undodir = vim.fn.expand("~/.vim/undodir")
opt.undofile = true
opt.backspace = "indent,eol,start"
opt.splitright = true
opt.splitbelow = true
opt.autochdir = false
opt.iskeyword:append("-")
opt.mouse:append("a")
opt.clipboard:append("unnamedplus")
opt.modifiable = true
-- opt.guicursor = 
opt.encoding = "UTF-8"

