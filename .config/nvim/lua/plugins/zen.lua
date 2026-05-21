-- https://github.com/shortcuts/no-neck-pain.nvim
-- https://github.com/sand4rt/zen.nvim
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
