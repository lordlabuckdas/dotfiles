" plugins
call plug#begin('~/.vim/plugged')

" colorscheme
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'octol/vim-cpp-enhanced-highlight'

" file explorer
Plug 'kevinhwang91/rnvimr'

" search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" text manip
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
" Plug 'jiangmiao/auto-pairs'

" git
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'

" GOAT
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" latex
Plug 'lervag/vimtex'

" toml
Plug 'cespare/vim-toml', { 'for': 'toml' }

" markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install', 'for': 'markdown' }
Plug 'godlygeek/tabular', { 'for': 'markdown' }
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
" Plug 'vimwiki/vimwiki'

" utils
Plug 'vim-airline/vim-airline'
Plug 'mhinz/vim-startify'
Plug 'SirVer/ultisnips', { 'for': ['markdown', 'cpp'] }

" discord rp
" Plug 'andweeb/presence.nvim'

call plug#end()

" screw vi
set nocompatible
set noshowmode

" colors
set background=dark
colorscheme dracula
set termguicolors
set t_Co=256

" leader
nnoremap <SPACE> <Nop>
let mapleader=" "
let maplocalleader=","

" syntax
syntax on
filetype plugin indent on
set ff=unix
set conceallevel=2

" general
set number
set mouse=a
set encoding=utf-8
set backspace=indent,eol,start
set wildmenu
set clipboard=unnamedplus
set splitbelow splitright
set hidden

" display
set showcmd
set scrolloff=5
set shortmess+=c
" set cmdheight=2
set cursorline
set linebreak
" set signcolumn=number
" set list
" set listchars=eol:¬

" backup
set nobackup
set nowritebackup

" updation
set updatetime=300
set autoread
set autowrite
set ttyfast
set lazyredraw

" indentation & tab supremacy
set autoindent
set smartindent
set shiftround
set smarttab
set tabstop=4 softtabstop=0 shiftwidth=4

" discord rpc
" let g:presence_neovim_image_text = 'oh i use arch btw'

" markdown
au filetype markdown set tabstop=2 shiftwidth=2
let g:vim_markdown_new_list_item_indent = 0
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_strikethrough = 1
" let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_folding_level = 3
" let g:vim_markdown_folding_style_pythonic = 1

" vimwiki
" let g:vimwiki_list = [{'path': '~/desktop/pd', 'index': '2021', 'syntax': 'markdown', 'ext': '.md'}]

" vimtex
let g:vimtex_view_method = 'zathura'
let g:vimtex_compiler_progname = '$HOME/.virtualenvs/neovim3/bin/nvr'

" set foldmethod=indent
" set foldlevel=2

" search
set hlsearch
set incsearch

" providers
let g:node_host_prog = '$HOME/.npm-global/bin/neovim-node-host'
let g:loaded_python_provider = 0
let g:python3_host_prog = '$HOME/.virtualenvs/neovim3/bin/python'
let g:loaded_ruby_provider = 0
let g:loaded_perl_provider = 0

" buffers
nmap <leader>l :bn!<cr>
nmap <leader>h :bp!<cr>
nmap <leader>d :bd!<cr>
nmap <leader>b :enew<cr>

" escape to normal from insert
inoremap jk <esc>

" escape terminal
" NOTE: slows closing of floating term windows
" tnoremap <esc><esc> <C-\><C-n>

" hardcore
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" fzf
nnoremap <leader>ff :Files<cr>
nnoremap <leader>fb :Buffers<cr>
nnoremap <leader>fl :Lines<cr>
nnoremap <leader>g :Rg<cr>

" compilation
au filetype cpp nnoremap <F5> :w <bar> !g++ -Wall -Wno-unused-result -std=c++17 -O2 % -o %:r && ./%:r < ip.txt > op.txt<cr>
" au filetype cpp nnoremap <F5> :w <bar> !g++ -Wall -Wno-unused-result -std=c++17 -O2 % -o %:r<cr>
" au filetype cpp nnoremap <F6> :!./%:r < ip.txt > op.txt<cr>
au filetype python nnoremap <F5> :w <bar> !python %<cr>
au filetype go nnoremap <F5> :w <bar> !go run %<cr>
au filetype rust nnoremap <F5> :w <bar> !cargo run<cr>

" auto-pairs
" let g:AutoPairsFlyMode = 1

" simple autopairing
inoremap { {}<left>
inoremap {} {}
inoremap {{ {
inoremap {<cr> {<cr>}<esc>O

" cpp syntax highlighting
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_template_highlight = 1

" select all
nnoremap <C-a> ggVG<cr>

" replace file with clipboard content
au filetype text nnoremap <F6> ggVGp :w<cr>

" airline
let g:airline#extensions#disable_rtp_load = 1
let g:airline_powerline_fonts = 1
let g:airline_extensions = ['branch', 'tabline', 'fugitiveline', 'whitespace', 'wordcount', 'branch', 'quickfix', 'term', 'coc']

" ranger
nnoremap <silent> <leader>r :RnvimrToggle<cr>
let g:rnvimr_enable_ex = 1
let g:rnvimr_enable_picker = 1
let g:rnvimr_enable_bw = 1

" markdown preview
let g:mkdp_browser = 'firefox'
let g:mkdp_filetypes = ['markdown']

" ultisnips
let g:UltiSnipsSnippetDirectories=[$XDG_CONFIG_HOME.'/nvim/snips']

" coc
source $XDG_CONFIG_HOME/nvim/coc.vim
let g:coc_global_extensions = ['coc-pyright', 'coc-json', 'coc-go', 'coc-rust-analyzer']
