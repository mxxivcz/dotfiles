return {
	{
		"nvim-orgmode/orgmode",
		event = "VeryLazy",
		ft = { "org" },
		tag = "0.3.7",
		config = function()
			require("orgmode").setup({
				org_agenda_files = { "~/Org/**/*" },
				org_default_notes_file = "~/Org/Inbox.org",
				org_hide_leading_stars = false,
				org_indent_mode_turns_on_hiding_stars = false,
			})
		end,
	},
	{
		"chipsenkbeil/org-roam.nvim",
		tag = "0.1.1",
		dependencies = {
			{
				"nvim-orgmode/orgmode",
				tag = "0.3.7",
			},
		},
		config = function()
			local roam = require("org-roam")
			roam.setup({
				extensions = {
					dailies = {
						directory = "Daily",
					},
				},
				templates = {
					d = {
						description = "default",
						template = "%?",
						target = "%[title].org",
					},
				},
			})
			vim.keymap.set("i", "<a-o>", roam.api.insert_node)
		end,
	},
	{
		"chrishrb/gx.nvim",
		keys = { { "gx", "<cmd>Browse<cr>", mode = { "n", "x" } } },
		cmd = { "Browse" },
		init = function()
			vim.g.netrw_nogx = 1
		end,
		config = function()
			require("gx").setup({
				handlers = {
					plugin = false,
					github = false,
					brewfile = false,
					package_json = false,
					search = false,
					go = false,
					jira = {
						name = "jira",
						filetype = { "org" },
						handle = function(mode, line, _)
							local ticket = require("gx.helper").find(line, mode, "(%u+-%d+)")
							if ticket and #ticket < 20 then
								return "https://pricefx.atlassian.net/browse/" .. ticket
							end
						end,
					},
				},
			})
		end,
	},
	{
		"akinsho/org-bullets.nvim",
		opts = {
			concealcursor = true,
		},
	},
}
