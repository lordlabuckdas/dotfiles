vim.g['vimtex_view_method'] = 'zathura'
vim.g['vimtex_compiler_progname'] = '$HOME/.virtualenvs/neovim3/bin/nvr'
vim.g['vimtex_mappings_enabled'] = 0

-- keymaps
local map = vim.api.nvim_set_keymap

map('n', '<Leader>lc', '<Plug>(vimtex-clean)<CR>', {})
map('n', '<Leader>lk', '<Plug>(vimtex-stop)<CR>', {})
map('n', '<Leader>ll', '<Plug>(vimtex-compile)<CR>', {})
map('n', '<Leader>lt', '<Plug>(vimtex-toc-toggle)<CR>', {})
map('n', '<Leader>lv', '<Plug>(vimtex-view)<CR>', {})
