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
vim.opt.completeopt = 'menu,menuone,noselect'
vim.opt.ttimeoutlen = 5
vim.opt.conceallevel = 2
vim.opt.concealcursor = 'nc'

vim.opt.wrap = false

vim.wo.signcolumn = 'yes'

vim.cmd [[colorscheme solarized]]

vim.keymap.set("n", "<leader>s", ":wall<cr>")
vim.keymap.set("n", "<leader>q", ":bdelete<cr>")
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")

vim.keymap.set("n", "<leader>w", "<c-w>w")
vim.keymap.set("n", "<leader><s-w>", "<c-w>p")

vim.keymap.set("n", "<leader>h", "<c-w>h")
vim.keymap.set("n", "<leader>l", "<c-w>l")
vim.keymap.set("n", "<leader>;", "<c-w>w")

vim.keymap.set("n", "<a-h>", ":tabprevious<cr>")
vim.keymap.set("n", "<a-l>", ":tabnext<cr>")
vim.keymap.set("n", "<a-s-h>", ":tabmove -1<cr>")
vim.keymap.set("n", "<a-s-l>", ":tabmove +1<cr>")
vim.keymap.set("n", "<a-n>", ":edit#<cr>")
vim.keymap.set("n", "<leader><space>", ":tabnew<cr>")

vim.keymap.set("n", "gt", [[:execute '!teams-for-linux ' . shellescape(expand('<cfile>'), 1)<CR>]] )

vim.g.vrc_trigger = '<leader><enter>'

vim.g.vrc_response_default_content_type = 'application/json'

vim.g.vrc_horizontal_split = vim.api.nvim_win_get_height(0) < vim.api.nvim_win_get_width(0)

vim.g.vrc_curl_opts = {
    ["-sS"] = "",
    ["--connect-timeout"] = 10,
    -- ["-i"] = "",
    ["--max-time"] = 60,
    ["-k"] = "",
}

vim.g.firenvim_config = {
    globalSettings = { alt = "all" },
    localSettings = {
        [".*"] = {
            cmdline  = "neovim",
            content  = "text",
            priority = 0,
            selector = "textarea",
            takeover = "never"
        }
    }
}
