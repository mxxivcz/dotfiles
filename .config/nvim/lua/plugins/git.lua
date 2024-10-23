return {
	{
		"lewis6991/gitsigns.nvim",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		config = function()
			local gitsigns = require("gitsigns")
			gitsigns.setup({
				current_line_blame = true,
			})
			vim.keymap.set("n", "<leader>j", function()
				gitsigns.nav_hunk("next")
			end)
			vim.keymap.set("n", "<leader>k", function()
				gitsigns.nav_hunk("prev")
			end)
			vim.keymap.set("n", "<leader>hb", function()
				gitsigns.blame_line({ full = true })
			end)

			vim.keymap.set("n", "<leader>hp", gitsigns.preview_hunk)
		end,
	},
	{
		"FabijanZulj/blame.nvim",
		cmd = "ToggleBlame",
		keys = {
			{ "<leader>gb", "<cmd>BlameToggle virtual<CR>", desc = "Git blame" },
		},
		opts = {},
	},
}
