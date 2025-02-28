" Disable vi compatibility mode
set nocompatible

" Enable syntax highlighting
syntax on

" Show line numbers
set number

" Show cursor position
set ruler

" Auto-indent new lines
set autoindent

" Smart indent for code
set smartindent

" Tab settings: 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Search settings
set incsearch      " Incremental search
set hlsearch       " Highlight search results
set ignorecase     " Case-insensitive search
set smartcase      " Unless pattern contains uppercase

" Show matching brackets
set showmatch

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Use system clipboard
set clipboard=unnamed

" Enhanced command-line completion
set wildmenu

" Auto-complete pairs
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
inoremap " ""<Left>
inoremap ' ''<Left>
inoremap ` ``<Left>

" Key mappings
nnoremap <space> : " Space key as command key
inoremap jj <Esc>  " jj to exit insert mode

" Set color scheme
colorscheme desert