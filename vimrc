set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set mouse=a
set encoding=utf-8
let &t_ut=''
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


syntax on
set number
set relativenumber
set cursorline
set wrap
set wildmenu
set hlsearch
set incsearch
set smartcase


# # remap key j to k; k to j
# noremap j k
# noremap k j

map s <nop>
map S :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>
map J 5j
map K 5k
call plug#begin()

Plug 'vim-airline/vim-airline'

" Theme
Plug 'tomasiser/vim-code-dark'

call plug#end()

colorscheme codedark
set t_Co=256
set t_ut=
