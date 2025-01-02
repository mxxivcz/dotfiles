return {
	"folke/zen-mode.nvim",
	config = function()
		local zen = require("zen-mode")
		zen.setup({
			window = {
				width = 86,
			},
		})
		vim.keymap.set("n", "<leader>z", zen.toggle)
	end,
}
