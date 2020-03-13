set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/MatchTagAlways'
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'bling/vim-airline'
Plugin 'luochen1990/rainbow'
Plugin 'airblade/vim-gitgutter'
Plugin 'kien/ctrlp.vim'
Plugin 'ap/vim-css-color'
Plugin 'FooSoft/vim-argwrap'
Plugin 'posva/vim-vue'
Plugin 'w0rp/ale'
Plugin 'tomlion/vim-solidity'
Plugin 'elixir-editors/vim-elixir'
Plugin 'leafgarland/typescript-vim'
Plugin 'peitalin/vim-jsx-typescript'
Plugin 'derekwyatt/vim-scala'
Plugin 'fatih/vim-go'

call vundle#end()            " required
filetype plugin indent on    " required

syntax on
set expandtab
set hlsearch
set nofoldenable
set autoindent
set mouse=a
set mousehide
set cursorline
set cursorcolumn
set shiftwidth=2
set softtabstop=2
set number
set relativenumber

colorscheme hybrid

"set clipboard=unnamedplus
set clipboard=unnamed

" Disable node_modules and bower_components from ctrl-p fuzzy search
set wildignore+=*/node_modules/*,*/bower_components/*
let g:ctrlp_custom_ignore = '.*(bower_components|node_modules).*'

let $TMP_DIR=$HOME."/.vim/tmp/"
set backupdir=$TMP_DIR
set directory=$TMP_DIR

autocmd vimenter * NERDTree
let g:rainbow_active = 1
"autocmd BufNewFile,BufRead *.json set ft=javascript

if has("gui_running")
  set guioptions-=T
  set gfn=TerminusTTF:h14
  set lines=52 columns=220
  set ai
  set ruler
  
  "disable the awfull bell
  set visualbell t_vb=
else
  set t_Co=256
endif

nnoremap gf :lv /\<<C-r><C-w>\>/j **/* \| lop <CR>
nnoremap gc :noh <CR>
nnoremap gt :NERDTree <CR>
"nnoremap gn :split <CR>
"nnoremap gm :vsplit <CR>
nnoremap gw :ArgWrap<CR>

" Map the esc, thanks touch bar
inoremap § <esc>

let g:ale_completion_enabled = 1
let g:ale_fixers = {}
let g:ale_fixers.elixir = ['mix_format']
