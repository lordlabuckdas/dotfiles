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

-- cpp
vim.cmd[[au filetype cpp nnoremap <Leader>mc :w <bar> !g++ -Wall -Wextra -Wshadow -fsanitize=undefined -std=c++17 -O2 -o %:r % <CR>]]
vim.cmd[[au filetype cpp nnoremap <Leader>mr :!./%:r < input.txt > output.txt <CR>]]

-- python
vim.cmd[[au filetype python nnoremap <Leader>mr :w <bar> !python % <CR>]]

-- go
vim.cmd[[au filetype go nnoremap <Leader>mr :!go run % <CR>]]

-- rust
vim.cmd[[au filetype rust nnoremap <Leader>mr :!cargo run % <CR>]]
