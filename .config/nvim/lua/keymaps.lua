-- convenient escape
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', {})

-- select entire buffer
vim.api.nvim_set_keymap('n', '<C-a>', 'ggVG', {})

-- buffer nav
vim.api.nvim_set_keymap('n', '<Leader>l', ':bn!<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>h', ':bp!<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>d', ':bd!<CR>', {})

-- open links without netrw
-- TODO: fix text object
-- vim.api.nvim_set_keymap('n', 'gx', ':!xdg-open <cWORD> &<CR><CR>', { noremap = true })

-- cpp build and run
vim.cmd[[au filetype cpp nnoremap <Leader>mc :w <bar> !g++ -Wall -Wextra -Wshadow -fsanitize=undefined -std=c++17 -O2 -o %:r % <CR>]]
vim.cmd[[au filetype cpp nnoremap <Leader>mr :!./%:r < ip.txt > op.txt <CR>]]
