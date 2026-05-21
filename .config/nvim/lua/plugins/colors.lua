return {
	-- https://github.com/leonasdev/.dotfiles/blob/master/.config/nvim/lua/plugins/colorscheme.lua#L20
	{
		"catgoose/nvim-colorizer.lua",
		event = "BufReadPre",
		opts = {
			user_default_options = {
				names = false,
			},
		},
	},
	{
		"Tsuzat/NeoSolarized.nvim",
		priority = 1000,
		cmd = "LoadColors",
		lazy = false,
		config = function()
			vim.api.nvim_create_autocmd("ColorScheme", {
				pattern = "NeoSolarized",
				callback = function()
					vim.api.nvim_set_hl(0, "Normal", { fg = "#586e75" })
					vim.api.nvim_set_hl(0, "@org.headline.level1", { fg = "#DC322F" })
					vim.api.nvim_set_hl(0, "@org.headline.level4", { fg = "#859900" })
				end,
			})
			vim.cmd.colorscheme("NeoSolarized")
		end,
	},
	{
		"ishan9299/nvim-solarized-lua",
		priority = 1000,
		cmd = "LoadColors",
		lazy = false,
		config = function()
			vim.api.nvim_create_autocmd("ColorScheme", {
				pattern = "solarized*",
				callback = function()
					vim.api.nvim_set_hl(0, "@org.hyperlink.desc", { underline = true })
				end,
			})
		end,
	},
}
