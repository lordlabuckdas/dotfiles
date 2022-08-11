vim.g.vimtex_view_method = 'zathura'
vim.g.vimtex_compiler_progname = '/home/kitchu/.virtualenvs/neovim3/bin/nvr'
vim.g.vimtex_mappings_enabled = 0

-- keymaps
vim.api.nvim_set_keymap('n', '<Leader>vc', '<Plug>(vimtex-clean)<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>vk', '<Plug>(vimtex-stop)<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>vl', '<Plug>(vimtex-compile)<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>vt', '<Plug>(vimtex-toc-toggle)<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>vv', '<Plug>(vimtex-view)<CR>', {})
