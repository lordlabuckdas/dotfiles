-- vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_add_trailing = 1
vim.g.nvim_tree_show_icons = {
    folders = 1,
    files = 1,
    git = 1,
}

require('nvim-tree').setup {
    diagnostics = {
        enable = true,
    },
    actions = {
        open_file = {
            resize_window = true,
        },
    },
    filters = {
        custom = {
            '.git',
            'node_modules',
            '.cache',
            '__pycache__',
        }
    },
    renderer = {
        indent_markers = {
            enable = true,
        }
    },
}

-- if directory is passed as an arg
-- open telescope to choose file
_G.open_nvim_tree = function()
    local first_arg = vim.v.argv[2]
    if first_arg and vim.fn.isdirectory(first_arg) == 1 then
        -- delete existing dir buffer
        vim.api.nvim_exec([[:NvimTreeOpen]], false)
    end
end

vim.api.nvim_exec([[
augroup NvimTreeOnEnter
    autocmd!
    autocmd VimEnter * lua open_nvim_tree()
augroup END
]], false)

-- telescope keybinds
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>n', ':NvimTreeFocus<CR>', {})
