" enable syntax highlighting
syntax enable
filetype plugin indent on

execute pathogen#infect()

map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$']

" Set 256 color
set t_Co=256

" Set vim mode
set nocompatible

set backspace=2 "backspace like most editors
set showcmd
set ignorecase
set smartcase
let mapleader=" "
set ruler

" relative numbering
set number
set relativenumber

" highlight search results
set hlsearch

" set tabs to have 4 spaces
set ts=4
set autoindent
set expandtab
set shiftwidth=4
set shiftround

autocmd FileType html :setlocal sw=2 ts=2 sts=2
autocmd FileType css :setlocal sw=2 ts=2 sts=2

set cursorline
set showmatch

set splitbelow
set splitright

"quicker movment
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Python stuff
let python_highlight_all = 1
autocmd BufWritePre *.py normal m`:%s/\s\+$//e``

"Html stuff
set matchpairs+=<:>
let g:html_indent_tags = 'li\|p'

""" SYSTEM CLIPBOARD COPY & PASTE SUPPORT
set pastetoggle=<F2> "F2 before pasting to preserve indentation
"Copy paste to/from clipboard
vnoremap <C-c> "*y
map <silent><Leader>p :set paste<CR>o<esc>"*]p:set nopaste<cr>"
map <silent><Leader><S-p> :set paste<CR>O<esc>"*]p:set nopaste<cr>"
map <silent><C-v> :set paste<CR>o<esc>"*]p:set nopaste<cr>"

"tabs
nnoremap th :tabnext<CR>
nnoremap tl :tabprev<CR>
nnoremap tt :tabnew<CR>

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
