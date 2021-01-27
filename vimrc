
"  __  __        __     _____ __  __ ____   ____
" |  \/  |_   _  \ \   / /_ _|  \/  |  _ \ / ___|
" | |\/| | | | |  \ \ / / | || |\/| | |_) | |
" | |  | | |_| |   \ V /  | || |  | |  _ <| |___
" |_|  |_|\__, |    \_/  |___|_|  |_|_| \_\\____|
"         |___/

" Author: @Soooda

" ===
" === Basic
" ===
set exrc
set secure
set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set autoindent
set smartindent
set encoding=utf-8
set visualbell
set noshowmode
set hidden
set lazyredraw
set updatetime=100
" Omit the hit <Enter> message
set shortmess+=c

set notimeout
set ttimeoutlen=0

set viewoptions=cursor,folds,slash,unix

" Enable Cursor
set mouse=a

" Use the system clipboard
set clipboard=unnamedplus

" Prevent incorrect background rendering
let &t_ut=''

set number
"set relativenumber
set ruler
set cursorline
syntax enable

" Tab
set noexpandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set shiftround

set list
set listchars=tab:\|\ ,nbsp:⎵,trail:▫
set scrolloff=4

" Prevent auto line split
set wrap
set tw=0

set indentexpr=

" Better backspace
set backspace=indent,eol,start

" Fold
set foldmethod=indent
set foldlevel=99
set foldenable

" Paste Format Option
set formatoptions-=tc

" Complete Option
set completeopt=longest,noinsert,menuone,noselect,preview

" Window split
set splitright
set splitbelow

" Status/Command bar
set laststatus=2 "To always display statusline
set autochdir
set showcmd
" Command autocomplete
set wildmenu

" Search
set hlsearch
set incsearch
set ignorecase
set smartcase

" Restore cursor position
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" ===
" === Keys Mapping
" ===
" Set <LEADER> as <SPACE>
let mapleader=" "

map ; :
map S :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>

" Redo
map U <C-r>

" Faster Navigation
noremap J 20j
noremap K 20k
noremap H 0
noremap L $

" Search
map <LEADER><CR> :nohlsearch<CR>
noremap - Nzz
noremap = nzz

" Resize splits with arrow keys
noremap <up> :res +5<CR>
noremap <down> :res -5<CR>
noremap <left> :vertical resize-5<CR>
noremap <right> :vertical resize+5<CR>

" Press ` to change cases (instead of ~)
noremap ` ~

" Identation
noremap < <<
noremap > >>

" h - screen left
" j - screen down
" k - screen up
" l - screen right
" 1~9 tab 1~9
" 0 - close other tabs
noremap <silent><LEADER>h <C-w>h
noremap <silent><LEADER>j <C-w>j
noremap <silent><LEADER>k <C-w>k
noremap <silent><LEADER>l <C-w>l
" Change the screen layout to horizontal
noremap <silent><LEADER><LEADER>h <C-w>H
" Change the screen layout to vertical
noremap <silent><LEADER><LEADER>j <C-w>J
noremap <silent><LEADER>1 1gt
noremap <silent><LEADER>2 2gt
noremap <silent><LEADER>3 3gt
noremap <silent><LEADER>4 4gt
noremap <silent><LEADER>5 5gt
noremap <silent><LEADER>6 6gt
noremap <silent><LEADER>7 7gt
noremap <silent><LEADER>8 8gt
noremap <silent><LEADER>9 9gt
noremap <silent><LEADER>0 :tabo<CR>

" Split Screen
" s +
"     h Split horizontally
"     v Split vertically
"     t Split a new tab
map s <nop>
noremap <silent>sh :set splitright<CR>:vsplit<CR>
noremap <silent>sv :set splitbelow<CR>:split<CR>
noremap <silent>st :tabnew<CR>

" ===
" === Pre-launch Commands
" ===
packadd! dracula
colorscheme dracula

exec "nohlsearch"
