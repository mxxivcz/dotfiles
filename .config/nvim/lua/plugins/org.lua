return {
	{
		"nvim-orgmode/orgmode",
		event = "VeryLazy",
		ft = { "org" },
		tag = "0.3.4",
		config = function()
			require("orgmode").setup({
				org_agenda_files = { "~/Org/*" },
				org_default_notes_file = "~/Org/Inbox.org",
				org_hide_leading_stars = false,
				org_indent_mode_turns_on_hiding_stars = false,
			})
		end,
	},
	{
		"chipsenkbeil/org-roam.nvim",
		tag = "0.1.0",
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
				directory = "~/Org/Roam",
			})
			vim.keymap.set("i", "<a-o>", roam.api.insert_node)
		end,
	},
}
