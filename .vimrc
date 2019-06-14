call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
"Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'morhetz/gruvbox'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'w0rp/ale'
Plug 'tomasiser/vim-code-dark'
Plug 'leafgarland/typescript-vim'

call plug#end()
syntax on
filetype plugin indent on
"colo seoul256
"colo gruvbox
set t_Co=256
set t_ut=
colo codedark

" Misc
set relativenumber
set hlsearch

" autocmd vimenter * NERDTree

" JS Linter
let g:ale_fixers = {
 \ 'javascript': ['eslint']
 \ }
let g:ale_sign_error = "⭕️"
let g:ale_sign_warning = "⚠️'"

" Indentation
filetype plugin indent on
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

