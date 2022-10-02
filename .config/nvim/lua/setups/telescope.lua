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

require('telescope').load_extension "file_browser"

vim.keymap.set('n', '<C-p>', '<Cmd>Telescope find_files<cr>')
vim.keymap.set('n', '<C-S-p>', '<Cmd>Telescope find_files cwd=%:p:h<cr>')
vim.keymap.set('n', '<C-s>', '<Cmd>Telescope live_grep<cr>')
vim.keymap.set('n', '<space>ff', '<Cmd>Telescope find_files<cr>')
vim.keymap.set('n', '<space>f<space>f', '<Cmd>Telescope find_files cwd=%:p:h<cr>')
vim.keymap.set('n', '<space>fg', '<Cmd>Telescope live_grep cwd=%:p:h<cr>')
vim.keymap.set('n', '<space>fb', '<cmd>Telescope file_browser cwd=%:p:h<cr>')
