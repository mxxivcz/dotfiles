require('telescope').setup({
  defaults = {
    layout_strategy = 'vertical',
    layout_config = {
      vertical = {
        mirror = true,
        width = 0.95,
        height = 0.95
     }
    }
  }
})

vim.api.nvim_set_keymap('', '<C-p>', ':Telescope find_files<cr>', {})
vim.api.nvim_set_keymap('', '<C-s>', ':Telescope live_grep<cr>', {})
