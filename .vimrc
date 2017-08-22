" ========== General Config ==========

set nocompatible
set number                      " Line numbers
set history=10                  " Store 10 histories
set showcmd                     " Show incomplete cmds down to the bottom
set showmode                    " Show current mode down to the bottom
set mouse=a
set wrap

" Indentation
set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

" filetype func on
filetype plugin indent on
syntax on

" ========== Change Leader ==========

let mapleader=","

" Tab Movement
map <Leader>n :bn<cr>
map <Leader>m :bp<cr>

" ========= Nicer copy paste =========

" copy in visual mode
vmap <Leader>y "+y
" cut in visual mode
vmap <Leader>d "+d
" paste in visual mode
vmap <Leader>p "+p
vmap <Leader>P "+P

" copy in normal mode
nmap <Leader>y "+y
" cut in normal mode
nmap <Leader>d "+d
" paste in normal mode
nmap <Leader>p "+p
nmap <Leader>P "+P

nnoremap tn :tabnew<space>
nnoremap tk :tabnext<cr>
nnoremap tj :tabprev<cr>
nnoremap th :tabfirst<cr>
nnoremap tl :tablast<cr>

" initialize vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  " start all plugins below
  Plugin 'VundleVim/Vundle.vim'
  Plugin 'scrooloose/nerdtree.git'
    " NERDTree shortcut
    map <Leader>t :NERDTreeToggle<CR>
    map <Leader>r <esc> :NERDTreeFind<CR>
    let g:tmux_navigator_no_mappings = 1

  Plugin 'aperezdc/vim-template'
    " Customize the settings for vim-template plugin
    let g:email = "dekteguh@gmail.com"
    let g:user = "Eko Teguh Widodo"
    let g:license = "MIT"

  Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'
    " Airline theme
    let g:airline_theme='tomorrow'
    let g:airline_powerline_fonts = 1
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#fnamemod = ':t'
    let g:airline#extensions#tabline#branch#enabled = 1
    let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'

  Plugin 'ctrlpvim/ctrlp.vim'               " Command + T replacement by Ctrl + P
    let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
    let g:ctrlp_max_height = 30
    set wildignore+=*.pyc
    set wildignore+=*_build/*
    set wildignore+=*/coverage/*
    set wildignore+=*/tmp/*
    set wildignore+=*/node_modules/*
    map <C-B> :CtrlPBuffer<CR>
    map <C-P> :CtrlPMixed<CR>
  
  Plugin 'mattn/emmet-vim'
    " Emmet
    let g:user_emmet_install_global = 0
    autocmd FileType html,css EmmetInstall
    let g:user_emmet_leader_key = '<C-Z>' " Using Ctrl + Z + ,
  
  Plugin 'christoomey/vim-tmux-navigator'
    " TmuxNavigation
    map <BS> :TmuxNavigateLeft<cr>
    map <Leader>h :TmuxNavigateLeft<cr>
    map <Leader>j :TmuxNavigateDown<cr>
    map <Leader>k :TmuxNavigateUp<cr>
    map <Leader>l :TmuxNavigateRight<cr>
    map <Leader>\ :TmuxNavigatePrevious<cr>

  Plugin 'flazz/vim-colorschemes'
 
  " Language syntax
  Plugin 'sheerun/vim-polyglot'
  
  Plugin 'tpope/vim-surround'
  Plugin 'tpope/vim-commentary'
  Plugin 'tpope/vim-endwise'
  Plugin 'jiangmiao/auto-pairs'
  Plugin 'exvim/ex-autocomplpop' 
  Plugin 'terryma/vim-multiple-cursors'
  Plugin 'tpope/vim-fugitive'
  Plugin 'editorconfig/editorconfig-vim'
  
  " stop all plugins above
call vundle#end()

" set colorscheme
  colorscheme railscasts
 
