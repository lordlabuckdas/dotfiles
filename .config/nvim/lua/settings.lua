local o = vim.opt
local g = vim.g
local cmd = vim.cmd

-- colors
o.termguicolors = true
g.dracula_show_end_of_buffer = true
g.dracula_transparent_bg = true
cmd[[colorscheme dracula]]

-- providers
g.loaded_python_provider = false
g.loaded_ruby_provider = false
g.loaded_perl_provider = false
g.loaded_netrw = false
g.loaded_netrwPlugin = false
g.loaded_netrwSettings = false
g.loaded_netrwFileHandlers = false
g.node_host_prog = '$HOME/.npm-global/bin/neovim-node-host'
g.python3_host_prog = '$HOME/.virtualenvs/neovim3/bin/python'

-- general
o.clipboard = "unnamedplus"
o.mouse = 'a'
o.encoding = 'utf-8'
o.backspace = 'indent,eol,start'
o.wildmenu = true
o.completeopt = 'menu,menuone,noselect'

-- display
o.cursorline = true
o.scrolloff = 5
o.conceallevel = 2
o.linebreak = true
-- TODO: fix listchars
o.showbreak = '↪\\ '
o.listchars = {
    space = '␣',
    tab = '→\\ ',
    precedes = '«',
    extends = '»',
    eol = '¬',
    trail = '_',
    nbsp = '~',
}

-- search
o.hlsearch = true
o.incsearch = true
o.smartcase = true

-- indent
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.autoindent = true
o.smartindent = true
o.shiftround = true
o.smarttab = true
o.expandtab = true

-- buffers
o.hidden = true
o.splitbelow = true
o.splitright = true
o.syntax = 'on'

-- updation
o.autoread = true
o.autowrite = true
o.lazyredraw = true
o.ttyfast = true

-- files
o.ff = 'unix'

-- md
cmd[[autocmd FileType markdown setlocal shiftwidth=2 tabstop=2 softtabstop=2 foldenable foldmethod=indent foldlevel=2]]

-- numbering
o.number = true
cmd[[
augroup NumberToggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
    autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END
]]
