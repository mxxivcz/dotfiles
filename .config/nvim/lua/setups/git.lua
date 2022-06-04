require('gitsigns').setup {

  on_attach = function(bufnr)
    local function map(mode, lhs, rhs, opts)
        opts = vim.tbl_extend('force', {noremap = true, silent = true}, opts or {})
        vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, opts)
    end

    -- Navigation
    map('n', ']c', "&diff ? ']c' : '<cmd>Gitsigns next_hunk<CR>'", {expr=true})
    map('n', '[c', "&diff ? '[c' : '<cmd>Gitsigns prev_hunk<CR>'", {expr=true})
    map('n', '<leader>j', "&diff ? ']c' : '<cmd>Gitsigns next_hunk<CR>'", {expr=true})
    map('n', '<leader>k', "&diff ? '[c' : '<cmd>Gitsigns prev_hunk<CR>'", {expr=true})

    -- Actions
    map('n', '<leader>hs', ':Gitsigns stage_hunk<CR>')
    map('v', '<leader>hs', ':Gitsigns stage_hunk<CR>')
    map('n', '<leader>hr', ':Gitsigns reset_hunk<CR>')
    map('v', '<leader>hr', ':Gitsigns reset_hunk<CR>')
    map('n', '<leader>hS', '<cmd>Gitsigns stage_buffer<CR>')
    map('n', '<leader>hu', '<cmd>Gitsigns undo_stage_hunk<CR>')
    map('n', '<leader>hR', '<cmd>Gitsigns reset_buffer<CR>')
    map('n', '<leader>hp', '<cmd>Gitsigns preview_hunk<CR>')
    map('n', '<leader>hb', '<cmd>lua require"gitsigns".blame_line{full=true}<CR>')
    map('n', '<leader>tb', '<cmd>Gitsigns toggle_current_line_blame<CR>')
    map('n', '<leader>hd', '<cmd>Gitsigns diffthis<CR>')
    map('n', '<leader>hD', '<cmd>lua require"gitsigns".diffthis("~")<CR>')
    map('n', '<leader>td', '<cmd>Gitsigns toggle_deleted<CR>')

    -- Text object
    map('o', 'ih', ':<C-U>Gitsigns select_hunk<CR>')
    map('x', 'ih', ':<C-U>Gitsigns select_hunk<CR>')

  end
}

vim.keymap.set("n", '<leader>gb', "<cmd>Git blame<cr>")

-- vim.g.fugitive_gitlab_domains = ['https://gitlab.pricefx.eu']

-- nnoremap <space>ga :Git add %:p<CR><CR>
-- nnoremap <Leader>gs :Git<CR>
-- nnoremap <Leader>gb :Git blame -w<CR>
-- nnoremap <Leader>gc :Git commit -v -q<CR>
-- nnoremap <Leader>gt :Gcommit -v -q %:p<CR>
-- nnoremap <Leader>ge :Gedit<CR>
-- nnoremap <Leader>gr :Gread<CR>
-- nnoremap <Leader>gw :Gwrite<CR><CR>
-- nnoremap <Leader>gl :silent! Glog<CR>:bot copen<CR>
-- nnoremap <Leader>gp :Ggrep<Leader>
-- nnoremap <Leader>gm :Gmove<Leader>
-- nnoremap <Leader>gb :Git branch<Leader>
-- nnoremap <Leader>go :Git checkout<Leader>
-- nnoremap <Leader>gps :Dispatch! git push<CR>
-- nnoremap <Leader>gpl :Dispatch! git pull<CR>

-- nnoremap <Leader>gd :Gdiffsplit!<CR>
-- nnoremap gdt :diffget //2<CR>
-- nnoremap gdm :diffget //3<CR>
