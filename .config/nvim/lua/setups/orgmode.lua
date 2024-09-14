require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {'org'},
    additional_vim_regex_highlighting = {'org'},
  },
  ensure_installed = {'org'}, -- same as :TSUpdate org
}

require('orgmode').setup {
  org_agenda_files = {'~/Nextcloud/Org/*'},
  org_default_notes_file = '~/Nextcloud/Org/Inbox.org',
  org_hide_leading_stars = false,
  org_indent_mode_turns_on_hiding_stars = false,
}

require('org-roam').setup({
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
    }
  },
  directory = '~/Nextcloud/Org/Roam',
})
