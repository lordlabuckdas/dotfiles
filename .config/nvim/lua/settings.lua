local o = vim.opt
local g = vim.g

-- colors
vim.cmd[[colorscheme dracula]]
o.termguicolors = true

-- providers
g.loaded_python_provider = 0
g.loaded_ruby_provider = 0
g.loaded_perl_provider = 0
g.loaded_netrw = 0
g.loaded_netrwPlugin = 0
g.loaded_netrwSettings = 0
g.loaded_netrwFileHandlers = 0
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
o.number = true
o.cursorline = true
o.scrolloff = 5
o.conceallevel = 2
o.linebreak = true

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
o.foldenable = true
o.foldmethod = 'indent'
o.foldlevel = 2

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

-- md & cpp -> 2-space indent
vim.cmd[[autocmd FileType markdown,cpp setlocal shiftwidth=2 tabstop=2 softtabstop=2]]
