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

" utils
Plug 'vim-airline/vim-airline'
Plug 'mhinz/vim-startify'
Plug 'SirVer/ultisnips', { 'for': ['markdown', 'cpp'] }
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install', 'for': 'markdown' }

call plug#end()

" screw vi
set nocompatible

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

" general
set number
set mouse=a
set scrolloff=5
set encoding=utf-8
set backspace=indent,eol,start
set showcmd
set wildmenu
set clipboard=unnamedplus
set splitbelow splitright

" updation
set updatetime=100
set autoread

" indentation & tab supremacy
set autoindent
set smartindent
set smarttab
set tabstop=4 softtabstop=0 shiftwidth=4

" markdown
au filetype markdown set tabstop=2 shiftwidth=2

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
nmap <leader>l :bn!<CR>
nmap <leader>h :bp!<CR>
nmap <leader>d :bd<CR>
nmap <leader>n :enew<CR>

" escape to normal from insert
inoremap jk <esc>

" hardcore
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" compilation
au filetype cpp nnoremap <F5> :w <bar> !g++ -Wall -Wno-unused-result -std=c++14 -O2 % -o %:r && ./%:r < ip.txt > op.txt <CR>
au filetype python nnoremap <F5> :w <bar> !python3 % <CR>
au filetype go nnoremap <F5> :w <bar> !go run % <CR>

" paired brackets for cpp
" au filetype cpp inoremap ( ()<left>
au filetype cpp inoremap { {}<left>
au filetype cpp inoremap {{ {
au filetype cpp inoremap {<CR> {<CR>}<Esc>O
au filetype cpp inoremap {} {}

" paste input testcases
au filetype text nnoremap <F6> ggVGp :w<CR>

" nerdtree
" let NERDTreeQuitOnOpen = 1
" let NERDTreeAutoDeleteBuffer = 1
" let NERDTreeMinimalUI = 1
" let NERDTreeDirArrows = 1
" let NERDTreeShowHidden = 1
" map <C-n> :NERDTreeToggle<CR>

" airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
" let g:airline#extensions#virtualenv#enabled = 1

" ranger
nnoremap <silent> <leader>r :RnvimrToggle<CR>
let g:rnvimr_enable_ex = 1
let g:rnvimr_enable_picker = 1
let g:rnvimr_enable_bw = 1

" ultisnips
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/snips']

" fzf
nmap <Leader>ff :Files<CR>
nmap <Leader>fb :Buffers<CR>
nmap <Leader>fl :Lines<CR>
