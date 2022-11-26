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
vim.opt.showtabline = 2
vim.opt.suffixesadd= ".js,.jsx,.ts,.tsx,.lua"
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.undodir = vim.fn.getenv('HOME') .. '.local/share/nvim/undodir'
vim.opt.clipboard = 'unnamedplus'

vim.wo.signcolumn = 'yes'

vim.cmd [[colorscheme solarized]]

vim.keymap.set("n", "<leader>s", ":wall<cr>")
vim.keymap.set("n", "<leader>q", ":bdelete<cr>")
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")

vim.keymap.set("n", "<tab>", "<c-w>w")
vim.keymap.set("n", "<s-tab>", "<c-w>p")

vim.g.CtrlSpaceDefaultMappingKey = "<c-space> "

vim.keymap.set("n", "<a-j>", ":CtrlSpaceGoDown<cr>")
vim.keymap.set("n", "<a-k>", ":CtrlSpaceGoUp<cr>")
vim.keymap.set("n", "<leader>r", ":CtrlSpaceTabLabel<cr>")

vim.keymap.set("n", "<a-h>", ":tabprevious<cr>")
vim.keymap.set("n", "<a-l>", ":tabnext<cr>")
vim.keymap.set("n", "<a-s-h>", ":tabmove -1<cr>")
vim.keymap.set("n", "<a-s-l>", ":tabmove +1<cr>")
vim.keymap.set("n", "<a-n>", ":edit#<cr>")
vim.keymap.set("n", "<leader><space>", ":tabnew<cr>")
