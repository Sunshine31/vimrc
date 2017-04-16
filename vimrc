set nocompatible

colorscheme codeschool
syntax on
filetype on
filetype plugin on

filetype plugin indent on
set autoindent
set autoread
set autowriteall
set backspace=indent,eol,start
set clipboard=unnamedplus,unnamed
set encoding=utf-8
set expandtab
set fileencodings=utf-8,cp1251,koi8-r,cp866
set foldcolumn=1
set hidden
set hlsearch
set mouse=a
set laststatus=2
set nobackup
set noswapfile
set nowritebackup
set ruler
set t_Co=256
set undolevels=1000
set nu
set foldenable
set foldlevel=100
set foldmethod=indent
set modeline
set showmode
set showmatch
set showcmd
set shell=bash
set scrolloff=3
set breakindent
set nuw=4

"imap [ []<LEFT>
"imap ( ()<LEFT>
"imap { {}<LEFT>
inoremap kj <ESC>
map <LEFT> <Nop>
map <RIGHT> <Nop>
map <UP> <Nop>
map <DOWN> <Nop>
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

au FileType python setlocal et sw=4 ts=4 sts=4
au FileType ruby,html,eruby,yaml,sass,scss,cucumber,elixir setlocal et sw=2 ts=2 sts=2

call plug#begin()
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
  map <C-n> :NERDTreeToggle<CR>
  nmap <C-i> :NERDTreeFind<CR>

Plug 'tpope/vim-repeat'  

Plug 'tpope/vim-unimpaired'

Plug 'Yggdroot/indentLine'
let g:IndentLine_char = '|'
let g:indentLine_color_gui = '#B7B6B5'

Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
Plug 'ctrlpvim/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

Plug 'jiangmiao/auto-pairs'

Plug 'mattn/emmet-vim',   { 'for': ['html','xhtml','css','sass','scss','less', 'eex'] }
au FileType html,css,sass,scss,less,eex imap <expr><F4> emmet#expandAbbrIntelligent("\<tab>")
au FileType html,css,sass,scss,less,eex imap <expr>jk   emmet#expandAbbrIntelligent("\<tab>")

let g:user_emmet_install_global = 0
au FileType html,css,eex EmmetInstall
Plug 'gregsexton/MatchTag'
Plug 'elixir-lang/vim-elixir'

Plug 'Shougo/neocomplete.vim'
let g:neocomplete#enable_at_startup=1
let g:neocomplete#force_overwrite_completefunc=1

Plug 'vim-ruby/vim-ruby'

let ruby_operators           = 1

Plug 'tpope/vim-rails'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-bundler'

Plug 'tpope/vim-surround'
Plug 'avdgaag/vim-phoenix'
Plug 'Sirver/ultisnips'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForward="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

Plug 'honza/vim-snippets'
Plug 'tpope/vim-projectionist'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_theme='luna'
call plug#end()
