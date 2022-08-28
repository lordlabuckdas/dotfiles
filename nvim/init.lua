-- set leader
vim.g.mapleader = ' '

require('plugins')
require('keymaps')
require('snippets')
require('settings')

vim.cmd[[colorscheme dracula]]
