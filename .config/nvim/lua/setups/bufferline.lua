require('bufferline').setup {
  options = {
    show_buffer_close_icons = false,
    show_close_icon = false,
    show_buffer_icons = false
  }
}

vim.keymap.set("n", "<a-l>", ":BufferLineCycleNext<cr>")
vim.keymap.set("n", "<a-h>", ":BufferLineCyclePrev<cr>")

vim.keymap.set("n", "<a-c-l>", ":BufferLineMoveNext<cr>")
vim.keymap.set("n", "<a-c-h>", ":BufferLineMovePrev<cr>")
