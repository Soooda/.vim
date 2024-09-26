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
filetype on
syntax on
set autoindent autoread background=dark
set backspace=indent,eol,start belloff=all
set display=lastline encoding=utf-8 hidden
set history=10000 incsearch
set nojoinspaces laststatus=2 ruler
set showcmd smarttab nostartofline
set switchbuf=uselast wildmenu "wildoptions=pum,tagfile

set smartindent
set breakindent
set visualbell
set noshowmode
set updatetime=250


" Enable Cursor
set mouse=a

" Use the system clipboard
set clipboard="unnamedplus"

set number
"set relativenumber
set ruler
set cursorline

set completeopt=menuone,noinsert,noselect,preview

" Tab
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set shiftround

" Sets how vim will display certain whitespace characters in the editor.
set list
set listchars=tab:»\ ,trail:·,nbsp:␣
set scrolloff=5

" Prevent auto line split
set wrap

" Window split
set splitright
set splitbelow


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
let mapleader=' '
let maplocalleader=' '

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
" === Plugins Config
" ===
" Cursor Highlight
augroup illuminate_augroup
    autocmd!
    autocmd VimEnter * hi illuminatedWord cterm=underline gui=underline
augroup END

" Rainbow
let g:rainbow_active = 1

" Comment
nmap <LEADER>c gcc
vmap <LEADER>c gc

" indentLine
"let g:indentLine_setColors = 0
"let g:indentLine_color_term = 100
let g:indentLine_char = '┊'
"let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" ===
" === Pre-launch Commands
" ===
set termguicolors
colorscheme catppuccin_macchiato

exec "nohlsearch"
