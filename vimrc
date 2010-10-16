" Misc

syntax on
filetype off
filetype plugin indent on
let mapleader = ","
set guifont=Monaco:h12

" Bundles
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

set nocompatible
set modelines=0
set number
set fileformats=unix

" Tabs
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Other
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
"set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
" set relativenumber
" set undofile

" Search
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch

" Wrap
set wrap
set textwidth=79
set formatoptions=qrn1
" set colorcolumn=85

" Old textmate
au FocusLost * :wa
set list
set listchars=tab:▸\ ,eol:¬

" Move
nnoremap j gj
nnoremap k gk

" Customized
inoremap jj <ESC>
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
nnoremap <leader>nt :NERDTreeToggle<CR>
nnoremap <leader>a :Ack

" Show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

