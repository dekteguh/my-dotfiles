set nocompatible
filetype off

" =====================================
"         Initialize Vundle
" =====================================

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  " Start all plugins below
  
  Plugin 'VundleVim/Vundle.vim'
  Plugin 'scrooloose/nerdtree.git'
  Plugin 'aperezdc/vim-template'
  Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'
  Plugin 'ctrlpvim/ctrlp.vim'               " Command + T replacement by Ctrl + P
  Plugin 'mattn/emmet-vim'
  Plugin 'christoomey/vim-tmux-navigator'
  Plugin 'flazz/vim-colorschemes'
  Plugin 'sheerun/vim-polyglot'             " Language syntax
  Plugin 'tpope/vim-surround'
  Plugin 'tpope/vim-commentary'
  Plugin 'tpope/vim-endwise'
  Plugin 'jiangmiao/auto-pairs'
  Plugin 'terryma/vim-multiple-cursors'
  Plugin 'tpope/vim-fugitive'
  Plugin 'editorconfig/editorconfig-vim'
  Plugin 'tpope/vim-unimpaired'             " Line Bubbling
  
  Plugin 'pangloss/vim-javascript'
  Plugin 'mxw/vim-jsx'
  Plugin 'w0rp/ale'
  Plugin 'skywind3000/asyncrun.vim'
  
  Plugin 'nikvdp/ejs-syntax'
  Plugin 'mustache/vim-mustache-handlebars'
  Plugin 'digitaltoad/vim-pug'

  " Track the engine.
  Plugin 'SirVer/ultisnips'
  " Snippets are separated from the engine. Add this if you want them:
  Plugin 'honza/vim-snippets'

  " stop all plugins above
call vundle#end()

filetype plugin indent on
syntax on

" ====================================
"           General Config
" ====================================

set backspace=indent,eol,start
set number                      " Line numbers
set history=10                  " Store 10 histories
set showcmd                     " Show incomplete cmds down to the bottom
set showmode                    " Show current mode down to the bottom
set mouse=a
set wrap
set ruler
set showmatch
set autoread
set autowrite
set viminfo+=!
set guioptions-=T
set laststatus=2
set scrolloff=3
set sidescrolloff=4
set hidden
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
set linebreak
set hlsearch
set incsearch
set ignorecase
set smartcase
set shell=bash
set clipboard=unnamed
set winwidth=100
set winheight=5
set winminheight=5
set winheight=999
set noswapfile
set wildmenu
set nostartofline


" ===================================
"             Mapping
" ===================================

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


" =======================================
"          Setting Plugin
" =======================================

" Set colorscheme
  colorscheme Tomorrow-Night 
  set background=dark
    
" NERDTree shortcut
  map <Leader>t :NERDTreeToggle<CR>
  map <Leader>r <esc> :NERDTreeFind<CR>
  let g:tmux_navigator_no_mappings = 1
    
" Customize the settings for vim-template plugin
  let g:email = "dekteguh@gmail.com"
  let g:user = "Eko Teguh Widodo"
  let g:license = "MIT"

" Airline theme
  let g:airline_theme='molokai'
  let g:airline_powerline_fonts = 1
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#fnamemod = ':t'
  let g:airline#extensions#tabline#branch#enabled = 1
  let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'

" Setting Ctrl + P
  let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
  let g:ctrlp_max_height = 30
  set wildignore+=*.pyc
  set wildignore+=*_build/*
  set wildignore+=*/coverage/*
  set wildignore+=*/tmp/*
  set wildignore+=*/node_modules/*
  map <C-B> :CtrlPBuffer<CR>
  map <C-P> :CtrlPMixed<CR>
  
" Emmet
  let g:user_emmet_mode = 'a'
  let g:user_emmet_leader_key = '<Tab>' " Using Tab + ,
  let g:user_emmet_settings = {
    \'javascript.jsx': {
      \  'extends': 'jsx',
    \},
  \}
  
" TmuxNavigation
  map <BS> :TmuxNavigateLeft<cr>
  map <Leader>h :TmuxNavigateLeft<cr>
  map <Leader>j :TmuxNavigateDown<cr>
  map <Leader>k :TmuxNavigateUp<cr>
  map <Leader>l :TmuxNavigateRight<cr>
  map <Leader>\ :TmuxNavigatePrevious<cr>

" Line Bubbling
  nmap <C-k> [e
  nmap <C-j> ]e

" Setting ale
  let g:ale_sign_error = '●' " Less aggressive than the default '>>'
  let g:ale_sign_warning = '.'
  let g:ale_lint_on_enter = 0 " Less distracting when opening a new file

" Setting asyncrun
  autocmd BufWritePost *.js AsyncRun -post=checktime ./node_modules/.bin/eslint --fix %

" UltiSnips Configuration
  " Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
  let g:UltiSnipsSnippetDirectories=['~/.vim/bundle/vim-snippets/UltiSnips/','UltiSnips']
  let g:UltiSnipsEditSplit="vertical"
  let g:UltiSnipsListSnippets="<C-S-tab>"
  let g:UltiSnipsExpandTrigger="<tab>"
  let g:UltiSnipsJumpForwardTrigger="<tab>"
  let g:UltiSnipsJumpBackwardTrigger="<S-tab>"
  inoremap TT <tab>
  
  map <C-e> :UltiSnipsEdit<CR>
