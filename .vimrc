" no vi compatible
set nocompatible

" filetype func off
filetype off

" ========== General Config ==========

set number                      " Line numbers
set backspace=indent,eol,start  " Allow backspace in insert mode
set history=10                  " Store 10 histories
set showcmd                     " Show incomplete cmds down to the bottom
set showmode                    " Show current mode down to the bottom
"set gcr=a:blinkon0              " Disable cursor blink
set visualbell                  " No sounds
set autoread                    " Reload files changed outside vim

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

" For MacVim
" set guifont=FiraCode:h16

" initialize vundle
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" start all plugins below

Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'altercation/vim-colors-solarized'
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree.git'
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

Plugin 'Shougo/neocomplete'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
  let g:neosnippet#enable_snipmate_compability = 1
  let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

  " Plug key-mappings
  imap <C-k> <Plugin>(neosnippet_expand_or_jump)
  smap <C-k> <Plugin>(neosnippet_expand_or_jump)
  xmap <C-k> <Plugin>(neosnippet_expand_target)

  smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
  \ "\<Plugin>(neosnippet_expand_or_jump)" : "\<TAB>"

" Plugin 'ryanoasis/vim-devicons'
  " set guifont=FiraCode\ Nerd\ Font:h22
  " let g:airline_powerline_fonts = 1

Plugin 'tpope/vim-eunuch'
Plugin 'kristijanhusak/vim-hybrid-material'


" Plugin 'tpope/vim-rails.git'              " Rails plugin
Plugin 'mileszs/ack.vim'                  " Search everything in the current dir via :Ack
Plugin 'jtratner/vim-flavored-markdown.git'
Plugin 'nelstrom/vim-markdown-preview'    " Enable markdown preview + github flavored markdown
Plugin 'mattn/emmet-vim'
" Plugin 'pangloss/vim-javascript'
" Plugin 'vim-ruby/vim-ruby'
Plugin 'terryma/vim-multiple-cursors'
" Plugin 'mxw/vim-jsx'
" Plugin 'mustache/vim-mustache-handlebars'
" Plugin 'nikvdp/ejs-syntax'
" Plugin 'digitaltoad/vim-jade'
" Plugin 'shawncplus/phpcomplete.vim'
" Plugin 'valloric/youcompleteme'
Plugin 'sheerun/vim-polyglot'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-endwise'
Plugin 'jiangmiao/auto-pairs'

Plugin 'christoomey/vim-tmux-navigator'

" stop all plugins above
call vundle#end()

" filetype func on
filetype plugin indent on
syntax on

" set color for gruvbox
syntax enable
colorscheme gruvbox
set background=dark
" set colorcolumn=80

" set color for solarized
" syntax enable
" colorscheme solarized
" color solarized
" set background=dark

" lightline fix
set laststatus=2

" NERDTree shortcut
map <Leader>n :NERDTreeToggle<CR>
map <Leader>r <esc> :NERDTreeFind<CR>

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

" Javascript and JSX
" let g:javascript_plugin_jsdoc = 1
" let g:jsx_ext_required = 0

" Italic
highlight Comment gui=italic
highlight Comment cterm=italic
highlight htmlArg gui=italic
highlight htmlArg cterm=italic

" Nicer copy paste
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>y "+y
nmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

let g:tmux_navigator_no_mappings = 1

map <BS> :TmuxNavigateLeft<cr>
map <leader>h :TmuxNavigateLeft<cr>
map <leader>j :TmuxNavigateDown<cr>
map <leader>k :TmuxNavigateUp<cr>
map <leader>l :TmuxNavigateRight<cr>
map <leader>\ :TmuxNavigatePrevious<cr>

map <leader>a :Ack!
"Remove all trailing whitespace by pressing F5
nnoremap <leader>s :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
