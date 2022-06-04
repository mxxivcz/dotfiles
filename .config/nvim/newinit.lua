require('variables')
require('plugins')
require('setups')

vim.g.mapleader = ' '

vim.opt.termguicolors = true
vim.opt.background = 'light'
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.suffixesadd= ".js,.jsx,.ts,.tsx,.lua"
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.undodir = vim.fn.getenv('HOME') .. '.local/share/nvim/undodir'

vim.wo.signcolumn = 'yes'

vim.cmd [[colorscheme solarized]]

