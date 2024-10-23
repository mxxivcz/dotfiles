return {
	{
		"junegunn/fzf",
		build = "./install --bin",
	},
	{
		"ibhagwan/fzf-lua",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			local fzf = require("fzf-lua")

			fzf.setup({
				winopts = {
					width = 0.95,
					preview = {
						flip_columns = 140,
					},
				},
				actions = {
					files = {
						["default"] = fzf.actions.file_edit,
					},
				},
			})

			vim.keymap.set("n", "<space>ff", function()
				fzf.files()
			end)
			vim.keymap.set("n", "<space>f<space>f", function()
				fzf.files({ cwd = "%:p:h" })
			end)
			vim.keymap.set("n", "<space>fg", function()
				fzf.live_grep({ cwd = "%:p:h" })
			end)
			vim.keymap.set("n", "<space>gs", function()
				fzf.git_status()
			end)
			vim.keymap.set("n", "<a-j>", function()
				fzf.buffers()
			end)
		end,
	},
}
