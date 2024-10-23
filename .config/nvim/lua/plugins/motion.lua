return {
	{
		"smoka7/hop.nvim",
		version = "*",
		config = function()
			local hop = require("hop")
			HintDirection = require("hop.hint").HintDirection
			hop.setup({ keys = "etovxqpdygfblzhckisuran" })
			vim.keymap.set("n", "<c-j>", function()
				hop.hint_lines({ direction = HintDirection.AFTER_CURSOR })
			end)
			vim.keymap.set("n", "<c-k>", function()
				hop.hint_lines({ direction = HintDirection.BEFORE_CURSOR })
			end)
		end,
	},
	{
		"folke/flash.nvim",
		event = "VeryLazy",
		opts = {},
    -- stylua: ignore
    keys = {
      { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
      { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
      { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    },
	},
}
