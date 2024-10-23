return {
	{
		"stevearc/dressing.nvim",
		opts = {},
	},
	{
		"ziontee113/icon-picker.nvim",
		config = function()
			require("icon-picker").setup({ disable_legacy_commands = true })

			vim.keymap.set("n", "<leader>i", "<cmd>IconPickerNormal<cr>")
			vim.keymap.set("i", "<a-i>", "<cmd>IconPickerInsert<cr>")
		end,
	},
}
