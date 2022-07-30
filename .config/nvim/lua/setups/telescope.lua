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

vim.keymap.set('n', '<C-p>', '<Cmd>Telescope find_files<cr>')
vim.keymap.set('n', '<C-S-p>', '<Cmd>Telescope find_files cwd=%:p:h<cr>')
vim.keymap.set('n', '<C-s>', '<Cmd>Telescope live_grep<cr>')
