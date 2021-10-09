-- convenient escape
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', {})

-- select entire buffer
vim.api.nvim_set_keymap('n', '<C-a>', 'ggVG', {})

-- buffer nav
vim.api.nvim_set_keymap('n', '<Leader>l', ':bn!<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>h', ':bp!<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>d', ':bd!<CR>', {})
