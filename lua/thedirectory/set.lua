vim.opt.updatetime = 50

vim.opt.laststatus = 3

vim.opt.nu = true
vim.opt.relativenumber =  true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8

vim.g.mapleader = ' '

vim.g.whichwrap = "bs<>[]hl"

vim.opt.formatoptions:remove { "c", "r", "o" }
vim.opt.formatoptions:remove('cro')
vim.cmd('set formatoptions-=cro')
vim.cmd('set path+=~/.config/nvim')
