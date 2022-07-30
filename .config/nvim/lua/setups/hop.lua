require('hop').setup {
}

HintDirection = require'hop.hint'.HintDirection

vim.keymap.set('', '<c-j>', [[<Cmd>lua require('hop').hint_lines({ direction = HintDirection.AFTER_CURSOR })<CR>]])
vim.keymap.set('', '<c-k>', [[<Cmd>lua require('hop').hint_lines({ direction = HintDirection.BEFORE_CURSOR })<CR>]])
vim.keymap.set('', '<c-l>', [[<Cmd>lua require('hop').hint_char2()<CR>]])
