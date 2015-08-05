" enable syntax highlighting
syntax enable
filetype plugin indent on

" Set 256 color
set t_Co=256

" Set vim mode
set nocompatible

" Set leader
let mapleader=","

" Set the timeout length
set timeoutlen=250

" Backspace settings
set backspace=indent,eol,start

" See where the cursor is in the file numerically
set ruler

" With 7.4, the current line number can be bumped out
set number
" Relative numbers for easy jumping
set relativenumber

" highlight search results
set hlsearch

set tw=80

" Map <Tab> to highlight indentation
nnoremap <Tab> /^ \+<CR>

" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show a visual line under the cursor's current line 
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1
