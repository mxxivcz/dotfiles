return {
	{
		"mistweaverco/kulala.nvim",
		opts = {},
	},
	{
		"diepm/vim-rest-console",
		config = function()
			vim.g.vrc_trigger = "<leader><enter>"
			vim.g.vrc_response_default_content_type = "application/json"
			vim.g.vrc_horizontal_split = vim.api.nvim_win_get_height(0) > vim.api.nvim_win_get_width(0)
			vim.g.vrc_curl_opts = {
				["-sS"] = "",
				["--connect-timeout"] = 10,
				-- ["-i"] = "",
				["--max-time"] = 60,
				["-k"] = "",
			}
		end,
	},
}
