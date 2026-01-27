vim.opt.termguicolors = true           -- MUST be at the top
vim.opt.background = "dark"            -- match your iTerm2 theme
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = vim.fn.stdpath('data') .. '/undo'
vim.opt.undofile = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.cursorline = true
vim.opt.signcolumn = 'yes'
vim.opt.clipboard = 'unnamedplus'
vim.g.mapleader = " "

-- Transparent background
vim.cmd([[
hi Normal guibg=NONE
hi NormalNC guibg=NONE
]])
