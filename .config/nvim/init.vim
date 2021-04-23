" plugins
call plug#begin('~/.vim/plugged')

" colorscheme
Plug 'dracula/vim', { 'as': 'dracula' }

" explorer
" Plug 'preservim/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'kevinhwang91/rnvimr', { 'on': 'RnvimrToggle' }
" TODO: lazy load and execute rnvimr settings?
Plug 'kevinhwang91/rnvimr'

" search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" text manip
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

" git
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'

" GOAT
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install', 'for': 'markdown' }
Plug 'godlygeek/tabular', { 'for': 'markdown' }
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }

" utils
Plug 'vim-airline/vim-airline'
Plug 'mhinz/vim-startify'
Plug 'SirVer/ultisnips', { 'for': ['markdown', 'cpp'] }

call plug#end()

" screw vi
set nocompatible
set noshowmode

" colors
colorscheme dracula
set termguicolors
set t_Co=256

" leader
nnoremap <SPACE> <Nop>
let mapleader=" "

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
" set cmdheight=2
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
" set signcolumn=number

" backup
set nobackup
set nowritebackup

" updation
set updatetime=300
set autoread
set autowrite

" indentation & tab supremacy
set autoindent
set smartindent
set smarttab
set tabstop=4 softtabstop=0 shiftwidth=4

" markdown
au filetype markdown set tabstop=2 shiftwidth=2
let g:vim_markdown_new_list_item_indent = 0
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_folding_level = 3
" let g:vim_markdown_folding_style_pythonic = 1

set foldmethod=indent
set foldlevel=2

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
" nmap <leader>d :bd<cr>
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
au filetype cpp nnoremap <F5> :w <bar> !g++ -Wall -Wno-unused-result -std=c++14 -O2 % -o %:r && ./%:r < ip.txt > op.txt<cr>
au filetype python nnoremap <F5> :w <bar> !python %<cr>
au filetype go nnoremap <F5> :w <bar> !go run %<cr>

" paired brackets
inoremap ( ()<left>
inoremap (( (
inoremap () ()
inoremap (<cr> (<cr>)<esc>O
inoremap { {}<left>
inoremap {{ {
inoremap {} {}
inoremap {<cr> {<cr>}<esc>O

" paste input testcases
au filetype text nnoremap <F6> ggVGp :w<cr>

" airline
let g:airline#extensions#disable_rtp_load = 1
let g:airline_powerline_fonts = 1
let g:airline_extensions = ['branch', 'tabline', 'fugitiveline', 'whitespace', 'wordcount', 'branch', 'quickfix', 'term', 'coc']

" nerdtree
" let NERDTreeQuitOnOpen = 1
" let NERDTreeAutoDeleteBuffer = 1
" let NERDTreeMinimalUI = 1
" let NERDTreeDirArrows = 1
" let NERDTreeShowHidden = 1
" map <C-n> :NERDTreeToggle<cr>

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
let g:coc_global_extensions = ['coc-pyright', 'coc-json', 'coc-go']
