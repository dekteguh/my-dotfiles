set nocompatible
filetype off

" =====================================
"         Initialize Vundle
" =====================================

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  Plugin 'VundleVim/Vundle.vim'
  Plugin 'rakr/vim-one'
  Plugin 'challenger-deep-theme/vim'
  Plugin 'itchyny/lightline.vim'

  Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'

  Plugin 'sheerun/vim-polyglot'
  Plugin 'scrooloose/nerdtree.git'

  Plugin 'tpope/vim-endwise'
  Plugin 'tpope/vim-unimpaired'
  Plugin 'jiangmiao/auto-pairs'
  Plugin 'tpope/vim-fugitive'
  Plugin 'mattn/emmet-vim'
  Plugin 'tpope/vim-commentary'
  Plugin 'tpope/vim-surround'
  Plugin 'EinfachToll/DidYouMean'
  Plugin 'ap/vim-css-color'
  "  Plugin 'fatih/vim-go'
call vundle#end()

filetype plugin indent on
syntax on

" ====================================
"           General Config
" ====================================

set backspace=indent,eol,start
set number
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
set autochdir

set cursorline

set autowrite
set encoding=utf-8
set title

" Display extra whitespace
set list listchars=tab:»·,trail:·

" Persistence undo
set undodir=~/.vim/undodir
set undofile

" Automatic reloading .vimrc
autocmd! bufwritepost *.vim source %

set pastetoggle=<F2>
set clipboard=unnamed

set laststatus=2

" ===================================
"             Mapping
" ===================================
let g:mapleader=","

map ; :

imap jj <Esc>
cmap jj <C-c>
vmap v <Esc>

" Change Pane
map <Leader>n :bn<CR>
map <Leader>m :bp<CR>

" Every unnecessary keystroke that can be saved is good for your health :)
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" This turns off Vim’s crazy default regex characters and makes searches use normal regexes.
nnoremap / /\v
vnoremap / /\v

" =======================================
"          Setting Plugin
" =======================================

if has('nvim') || has('termguicolors')
  set termguicolors
endif

" ColorSchemes
"colorscheme one
"colorscheme rupza
colorscheme challenger_deep

let g:lightline = { 'colorscheme': 'challenger_deep'}
set background=dark
"let g:one_allow_italics = 1

" NERDTree
map <Leader>t :NERDTreeToggle<CR>
map <Leader>r <Esc> :NERDTreeFind<CR>
let g:tmux_navigator_no_mappings = 1

" Vim Airline
"let g:airline_theme='one'
"let g:airline_theme='bubblegum'
"let g:airline_powerline_fonts = 1
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#fnamemod = ':t'
"let g:airline#extensions#tabline#branch#enabled = 1
"let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'

" Unimpaired -> Bubble single line
nmap <Leader>k [e
nmap <Leader>j ]e

" Bubble multiple line
vmap <Leader>k [egv
vmap <Leader>j ]egv
