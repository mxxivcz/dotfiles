vim.keymap.set("n", "<leader>s", ":wall<cr>")
vim.keymap.set("n", "<leader>q", ":bdelete<cr>")
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")

vim.keymap.set("n", "<leader>w", "<c-w>w")
vim.keymap.set("n", "<leader><s-w>", "<c-w>p")

vim.keymap.set("n", "<leader>h", "<c-w>h")
vim.keymap.set("n", "<leader>l", "<c-w>l")
vim.keymap.set("n", "<leader>;", "<c-w>w")

vim.keymap.set("n", "<a-h>", ":tabprevious<cr>")
vim.keymap.set("n", "<a-l>", ":tabnext<cr>")
vim.keymap.set("n", "<a-s-h>", ":tabmove -1<cr>")
vim.keymap.set("n", "<a-s-l>", ":tabmove +1<cr>")
vim.keymap.set("n", "<a-n>", ":edit#<cr>")
vim.keymap.set("n", "<leader><space>", ":tabnew<cr>")
