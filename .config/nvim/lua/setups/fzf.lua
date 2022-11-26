
local actions = require('fzf-lua.actions')

require('fzf-lua').setup {
  winopts = {
    width = 0.95,
    preview = {
      flip_columns = 140
    }
  },
  actions = {
    files = {
      ["default"] = actions.file_edit
    }
  }
}

vim.keymap.set('n', '<space>ff', function() require('fzf-lua').files() end)
vim.keymap.set('n', '<space>f<space>f', function() require('fzf-lua').files({ cwd="%:p:h" }) end)
vim.keymap.set('n', '<space>fg', function() require('fzf-lua').live_grep({ cwd="%:p:h" }) end)
vim.keymap.set('n', '<space>gs', function() require('fzf-lua').git_status() end)
