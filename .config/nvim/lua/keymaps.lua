local map = vim.api.nvim_set_keymap

-- convenient escape
map('i', 'jk', '<Esc>', {})

-- select entire buffer
map('n', '<C-a>', 'ggVG', {})

-- buffer nav
map('n', '<Leader>l', ':bn!<CR>', {})
map('n', '<Leader>h', ':bp!<CR>', {})
map('n', '<Leader>d', ':bd!<CR>', {})
