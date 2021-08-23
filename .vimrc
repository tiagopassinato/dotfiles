" Autoinstall vim-plug {{{
if empty(glob('~/.nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif
" }}}

call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
"Plug 'tpope/vim-sensible'
"Plug 'junegunn/seoul256.vim'
"Plug 'morhetz/gruvbox'
"Plug 'dracula/vim'
Plug 'airblade/vim-gitgutter'
Plug 'tomasiser/vim-code-dark'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'w0rp/ale'
Plug 'leafgarland/typescript-vim'
Plug 'vim-airline/vim-airline'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --no-bash' }
Plug 'junegunn/fzf.vim'
Plug 'ervandew/supertab'
Plug 'moll/vim-node'
Plug 'ternjs/tern_for_vim', { 'for' : 'javascript' }
call plug#end()

let g:coc_global_extensions = [ 'coc-tsserver' ]

syntax on
filetype plugin indent on

" THEMES
"colo seoul256
"colo gruvbox
colo codedark
"colo dracula

set t_Co=256
set t_ut=


" Misc
" set relativenumber
set hlsearch
set number
set cursorline
set cursorline
set cursorcolumn
set omnifunc=syntaxcomplete#Complete

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

let mapleader = " "
nnoremap <silent> <Leader><Space> :GFiles<CR>

map <silent> <C-b> :NERDTreeToggle<CR>

" Mouse
" se mouse+=a
set mouse=v
set clipboard+=unnamed

" Disable arrow keys - Get used to that, dude
" nnoremap <up> <nop>
" nnoremap <down> <nop>
" nnoremap <left> <nop>
" nnoremap <right> <nop>
" vnoremap <up> <nop>
" vnoremap <down> <nop>
" vnoremap <left> <nop>
" vnoremap <right> <nop>
