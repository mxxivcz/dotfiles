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

vim.keymap.set("n", "<leader>s", ":wall<cr>")
vim.keymap.set("n", "<leader>q", ":bdelete<cr>")
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>d", "\"+d")
vim.keymap.set("n", "<leader>p", "\"+p")
vim.keymap.set("n", "<leader>P", "\"+P")

vim.keymap.set("n", "<c-h>", "<c-w><c-h>")
vim.keymap.set("n", "<c-j>", "<c-w><c-j>")
vim.keymap.set("n", "<c-k>", "<c-w><c-k>")
vim.keymap.set("n", "<c-l>", "<c-w><c-l>")
vim.keymap.set("n", "<tab>", "<c-w>w")
vim.keymap.set("n", "<s-tab>", "<c-w>p")
