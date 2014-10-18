set nocompatible               " be iMproved
filetype off                   " required!

set hidden
set number
set guioptions=
set vb t_vb=
set fillchars=vert:\ ,fold:-
set list listchars=tab:\ \ ,trail:·
set ts=2 sts=2 sw=2 expandtab
set incsearch
"set hlsearch
set relativenumber
set ignorecase
set autoindent
set smartindent
set nomousehide
set nowrap
set novisualbell
set mouse=a
"set guifont=Terminus\ 9
"set guifont=Tamsyn\ 11
set guifont=Dina\ 10
"set guifont=DejaVu\ Sans\ Mono\ 8
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*.hi,*.o
set clipboard=unnamedplus
imap jj <ESC>

set t_Co=256
let mapleader = ","
set directory-=.

command RemoveTrailingWhitespace :%s/\s\+$//

call plug#begin('~/.vim/plugged')

Plug 'vim-scripts/CSApprox'
Plug 'flazz/vim-colorschemes'
Plug 'ctrlp.vim'
Plug 'The-NERD-Commenter'
Plug 'vim-airline'
Plug 'jonathanfilip/vim-lucius'
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'whatyouhide/vim-gotham'
Plug 'Valloric/YouCompleteMe'
Plug 'rking/ag.vim'

call plug#end()

syntax on
filetype plugin indent on

let g:airline_powrline_fonts = 1

"colorscheme gotham
colorscheme lucius
"let g:seoul256_background = 233
"colorscheme seoul256

autocmd Filetype c setlocal tabstop=8 textwidth=80 shiftwidth=8 noexpandtab cindent formatoptions=tcqlron cinoptions=:0,l1,t0,g0
autocmd Filetype markdown Goyo
"autocmd User GoyoEnter Limelight
"autocmd User GoyoLeave Limelight!
