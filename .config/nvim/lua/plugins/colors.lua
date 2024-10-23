return {
	"ishan9299/nvim-solarized-lua",
	cmd = "LoadColors",
	lazy = false,
	config = function()
		vim.opt.termguicolors = true
		vim.opt.background = "light"
		vim.cmd.colorscheme("solarized")
	end,
}
