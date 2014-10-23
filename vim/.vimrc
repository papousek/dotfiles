set nocompatible
set wildignore=*~,*.o,*.log,*.pyc
set ignorecase smartcase
set smarttab
set smartindent
set wildmode=list:longest
set showbreak=
set scrolloff=10
set laststatus=2
set incsearch
set hlsearch
set noerrorbells
set visualbell
set wildmenu
set encoding=utf8
set lcs=tab:»\ ,trail:•
set list
set shortmess=atI
set ttimeout
set notimeout
set nottimeout
set autowrite
set gdefault

set nobackup
set noswapfile

syntax on
filetype plugin on
filetype plugin indent on

" Completion
set completeopt=longest,menuone,preview

" Indention
set tabstop=2
set shiftwidth=2

" Autoindention
set autoindent
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" Trailing spaces
autocmd BufWritePre * :%s/\s\+$//e

" Grep
map <C-g> :!git grep <C-r><C-w> *<cr>

" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

" Pathogen
execute pathogen#infect()

" Syntastic
let g:syntastic_enable_perl_checker = 1

" tab navigation
nnoremap <C-Left>  :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-Left> <Esc>  :tabprevious<CR>i
inoremap <C-Right> <Esc> :tabnext<CR>i
inoremap <C-t> <Esc>     :tabnew<CR>

" nerdtree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
