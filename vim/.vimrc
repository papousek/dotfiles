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
set number
set nobackup
set noswapfile
set ruler

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
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_python_checkers=['flake8']
let g:syntastic_python_flake8_args='--ignore=E501,E225,E123,E128'
let g:syntastic_python_python_exec = '/usr/local/bin/python3.5'
let g:syntastic_loc_list_height=5

" tab navigation
nnoremap <C-j>  :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-j> <Esc>  :tabprevious<CR>i
inoremap <C-l> <Esc> :tabnext<CR>i
inoremap <C-t> <Esc>     :tabnew<CR>

" nerdtree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

nnoremap <F5> :GundoToggle<CR>

" ctags
map <C-]> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

" Python mode
let g:pymode_rope=0
