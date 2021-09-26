local map = vim.api.nvim_set_keymap

-- convenient escape
map('i', 'jk', '<Esc>', {})

-- telescope keybinds
map('n', '<Leader>f', ':Telescope find_files<CR>', {})
map('n', '<Leader>g', ':Telescope git_files<CR>', {})
map('n', '<Leader>b', ':Telescope buffers<CR>', {})
map('n', '<Leader>w', ':Telescope live_grep<CR>', {})

-- buffer
map('n', '<Leader>l', ':bn!<CR>', {})
map('n', '<Leader>h', ':bp!<CR>', {})
map('n', '<Leader>d', ':bd!<CR>', {})
