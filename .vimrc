" no vi compatible
set nocompatible

" filetype func off
filetype off

" ========== General Config ==========

set number                      " Line numbers
set history=10                  " Store 10 histories
set showcmd                     " Show incomplete cmds down to the bottom
set showmode                    " Show current mode down to the bottom
set mouse=a

" ========== Change Leader ==========

let mapleader=","

" ========== Indentation ==========

set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

set wrap  " Wrap lines

" Turn off swap files
set noswapfile
set nobackup
set nowb

" initialize vundle
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" start all plugins below

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree.git'
Plugin 'scrooloose/nerdcommenter'
Plugin 'aperezdc/vim-template'
" Plugin 'davidhalter/jedi-vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'             " Syntax highlighting
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
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-rails.git'              " Rails plugin
Plugin 'jtratner/vim-flavored-markdown.git'
Plugin 'nelstrom/vim-markdown-preview'    " Enable markdown preview + github flavored markdown
Plugin 'mattn/emmet-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'vim-ruby/vim-ruby'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'mxw/vim-jsx'
" Plugin 'mustache/vim-mustache-handlebars'
" Plugin 'nikvdp/ejs-syntax'
" Plugin 'digitaltoad/vim-jade'
" Plugin 'shawncplus/phpcomplete.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-endwise'
Plugin 'jiangmiao/auto-pairs'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'exvim/ex-autocomplpop'
Plugin 'flazz/vim-colorschemes'

" stop all plugins above

call vundle#end()

" filetype func on
filetype plugin indent on
syntax on

" set color for gruvbox
syntax enable
colorscheme railscasts
" lightline fix
set laststatus=2

" Tab
vmap <Tab> >gv
vmap <S-Tab> <gv

" NERDTree shortcut
map <Leader>t :NERDTreeToggle<CR>
map <Leader>r <esc> :NERDTreeFind<CR>
let g:tmux_navigator_no_mappings = 1

map <BS> :TmuxNavigateLeft<cr>
map <Leader>h :TmuxNavigateLeft<cr>
map <Leader>j :TmuxNavigateDown<cr>
map <Leader>k :TmuxNavigateUp<cr>
map <Leader>l :TmuxNavigateRight<cr>
map <Leader>\ :TmuxNavigatePrevious<cr>

map <Leader>n :bn<cr>
map <Leader>m :bp<cr>


" Customize the settings for vim-template plugin
let g:email = "dekteguh@gmail.com"
let g:user = "Eko Teguh Widodo"
let g:license = "MIT"

" Airline theme
" let g:airline_solarized_bg='dark'
" let g:airline_theme='solarized'
let g:airline_theme='tomorrow'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#branch#enabled = 1
" set noshowmode
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
" set statusline=%=&P\ %f\ %m
" set fillchars=vert:\ ,stl:\ ,stlnc:\

" Syntastic
let g:syntastic_enable_signs=1      " Mark syntax errors with :signs
let g:syntastic_auto_jump=0         " Aumatically jump to the error when saving the file
let g:syntastic_auto_loc_list=1     " Show the error list automatically
let g:syntastic_quiet_messages = {'level': 'warnings'}    " Don't care about warnings

" Markdown
augroup markdown
  au!
  au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END

" Emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key = '<C-Z>' " Using Ctrl + Z + ,

" Nicer copy paste

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

noremap tn :tabnew<space>
nnoremap tk :tabnext<cr>
nnoremap tj :tabprev<cr>
nnoremap th :tabfirst<cr>
nnoremap tl :tablast<cr>
