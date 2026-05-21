return {
	{
		dir = "~/Sources/orgmode",
		event = "VeryLazy",
		ft = { "org" },
		config = function()
			local directory = (os.getenv("ROAMDB") == "work") and "~/Work/Org" or "~/Nextcloud/Org"

			require("orgmode").setup({
				org_agenda_files = { directory .. "/**/*" },
				org_startup_indented = true,
				org_adapt_indentation = false,
				org_agenda_span = "day",
				org_default_notes_file = directory .. "/Inbox.org",
				org_todo_keywords = { "TODO(t)", "MSG(m)", "CALL(c)", "BLOCKED(b)", "|", "DONE(d)" },
				org_todo_keyword_faces = {
					TODO = ":background #000000 :foreground red",
					BLOCKED = ":foreground blue :weight bold",
					DONE = ":background #FFFFFF :slant italic :underline on",
				},
				mappings = {
					org = {
						org_todo = "<prefix>t",
						org_set_tags_command = "<prefix>T",
					},
				},
			})

			vim.api.nvim_create_autocmd("FileType", {
				pattern = { "org" },
				callback = function()
					vim.opt.wrap = true
					vim.opt.linebreak = true
				end,
			})
		end,
	},
	{
		dir = "~/Sources/org-roam.nvim",
		dependencies = {
			{
				"nvim-orgmode/orgmode",
			},
		},
		config = function()
			local roam = require("org-roam")
			local directory = (os.getenv("ROAMDB") == "work") and "~/Work/Org" or "~/Nextcloud/Org"
			local dbFile = (os.getenv("ROAMDB") == "work") and "db-work" or "db-personal"

			roam.setup({
				directory = directory,
				database = {
					path = os.getenv("HOME") .. "/.local/share/nvim/org-roam.nvim/" .. dbFile,
				},
				extensions = {
					dailies = {
						directory = "Daily",
					},
				},
				templates = {
					f = {
						description = "default",
						template = "%?",
						target = "%[title].org",
					},
					t = {
						description = "Task",
						template = { "* TODO %?", "SCHEDULED: %^u" },
						target = "Tasks.org",
					},
				},
			})
			vim.keymap.set("i", "<a-o>", roam.api.insert_node)
			vim.keymap.set("n", "<a-o>", roam.api.insert_node)

			vim.cmd([[
        highlight OrgHeadlineLevel2 guifg=#FF5733 guibg=#333333 gui=bold  
      ]])
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
					plugin = true,
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
			symbols = {
				list = "◉",
				headlines = { "󱓻", "󰇽", "▶", "◍" },
			},
			concealcursor = true,
		},
	},
	{
		"hamidi-dev/org-super-agenda.nvim",
		config = function()
			require("org-super-agenda").setup({
				org_files = { "~/Nextcloud/Org/**/*" },
				org_directories = { "~/Nextcloud/Org/" },
			})
		end,
	},
	{
		dir = "~/Sources/live-preview.nvim",
		dependencies = {
			"ibhagwan/fzf-lua",
		},
	},
}
