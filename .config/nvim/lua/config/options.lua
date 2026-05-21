vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.showtabline = 2
vim.opt.suffixesadd = ".js,.jsx,.ts,.tsx,.lua"
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.undodir = vim.fn.getenv("HOME") .. ".local/share/nvim/undodir"
vim.opt.clipboard = "unnamedplus"
vim.opt.completeopt = "menu,menuone,noselect"
vim.opt.ttimeoutlen = 5
vim.opt.conceallevel = 2
vim.opt.concealcursor = "nc"
vim.opt.wrap = false
vim.opt.showmode = false
vim.opt.termguicolors = true
vim.opt.background = "light"

vim.g.neovide_cursor_animation_length = 0
vim.o.guifont = "PragmataPro Mono Liga:h12.5"

vim.wo.signcolumn = "yes"

vim.lsp.config("*", {
	root_markers = { ".git" },
})

vim.lsp.config("ts_ls", {
	cmd = { "typescript-language-server", "--stdio" },
	filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
})

vim.lsp.enable("ts_ls")
