" no vi compatible
set nocompatible

" filetype func off
filetype off

" ========== General Config ==========

set number                      " Line numbers
set backspace=indent,eol,start  " Allow backspace in insert mode

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
Plugin 'davidhalter/jedi-vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'             " Syntax highlighting
Plugin 'ctrlpvim/ctrlp.vim'               " Command + T replacement by Ctrl + P
Plugin 'tpope/vim-rails.git'              " Rails plugin
Plugin 'mileszs/ack.vim'                  " Search everything in the current dir via :Ack
Plugin 'jtratner/vim-flavored-markdown.git'
Plugin 'nelstrom/vim-markdown-preview'    " Enable markdown preview + github flavored markdown
Plugin 'mattn/emmet-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'vim-ruby/vim-ruby'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'mxw/vim-jsx'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'nikvdp/ejs-syntax'
Plugin 'digitaltoad/vim-jade'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'valloric/youcompleteme'

" stop all plugins above
call vundle#end()

" filetype func on
filetype plugin indent on
syntax on

" set color for gruvbox
" syntax enable
" colorscheme gruvbox
" set background=dark
" set colorcolumn=80

" set color for solarized
syntax enable
colorscheme solarized
color solarized
set background=dark

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
let g:airline_solarized_bg='dark'
let g:airline_theme='solarized'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
" set noshowmode
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'

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

" Javascript and JSX
let g:javascript_plugin_jsdoc = 1
let g:jsx_ext_required = 0
