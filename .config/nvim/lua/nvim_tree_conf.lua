local g = vim.g

g.nvim_tree_ignore = { 
    '.git',
    'node_modules',
    '.cache'
}
g.nvim_tree_indent_markers = 1
g.nvim_tree_git_hl = 1
g.nvim_tree_add_trailing = 1
g.nvim_tree_show_icons = {
    folders = 1,
    files = 1,
    git = 1,
}

require('nvim-tree').setup {
    lsp_diagnostics = true,
}

-- telescope keybinds
local map = vim.api.nvim_set_keymap

map('n', '<C-n>', ':NvimTreeToggle<CR>', {})
