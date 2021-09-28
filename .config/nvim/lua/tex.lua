vim.g.vimtex_view_method = 'zathura'
vim.g.vimtex_compiler_progname = '$HOME/.virtualenvs/neovim3/bin/nvr'
vim.g.vimtex_mappings_enabled = 0

-- keymaps
local map = vim.api.nvim_set_keymap

map('n', '<Leader>vc', '<Plug>(vimtex-clean)<CR>', {})
map('n', '<Leader>vk', '<Plug>(vimtex-stop)<CR>', {})
map('n', '<Leader>vl', '<Plug>(vimtex-compile)<CR>', {})
map('n', '<Leader>vt', '<Plug>(vimtex-toc-toggle)<CR>', {})
map('n', '<Leader>vv', '<Plug>(vimtex-view)<CR>', {})
