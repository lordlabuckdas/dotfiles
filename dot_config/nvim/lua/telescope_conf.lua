local telescope = require('telescope')

-- TODO: display hidden files while respecting gitignore
-- TODO: check default search command, replace with rg if necessary
telescope.setup {
    pickers = {
        find_files = {
            theme = 'ivy'
        },
        git_files = {
            theme = 'ivy'
        },
        live_grep = {
            theme = 'ivy'
        },
        buffers = {
            theme = 'ivy'
        },
    },
    extensions = {
        fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = "smart_case",
        }
    },
}

-- fzf-like searching & speed
telescope.load_extension('fzf')

-- if directory is passed as an arg
-- open telescope to choose file
-- _G.open_telescope = function()
--     local first_arg = vim.v.argv[2]
--     if first_arg and vim.fn.isdirectory(first_arg) == 1 then
--         -- delete existing dir buffer
--         vim.api.nvim_exec([[:bd!]], false)
--         require("telescope.builtin").find_files({
--             search_dirs = {
--                 first_arg
--             }
--         })
--     end
-- end

-- vim.api.nvim_exec([[
-- augroup TelescopeOnEnter
--     autocmd!
--     autocmd VimEnter * lua open_telescope()
-- augroup END
-- ]], false)

-- telescope keybinds
vim.api.nvim_set_keymap('n', '<Leader>tf', ':Telescope find_files<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>tg', ':Telescope git_files<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>tb', ':Telescope buffers<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>tw', ':Telescope live_grep<CR>', {})
