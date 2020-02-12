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

set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

Plugin 'tmhedberg/SimpylFold'

let g:SimpylFold_docstring_preview=1


Plugin 'vim-scripts/indentpython.vim'

set encoding=utf-8

"Plugin 'Valloric/YouCompleteMe'

"let g:ycm_server_keep_logfiles = 1
"let g:ycm_server_log_level = 'debug'
"let g:ycm_use_clangd = 0

"let g:ycm_autoclose_preview_window_after_completion=1
"let g:ycm_path_to_python_interpreter = '/usr/bin/python'
"map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

Plugin 'cjrh/vim-conda'

Plugin 'preservim/nerdcommenter'

Plugin 'xolox/vim-misc'
"Plugin 'dense-analysis/ale'

"let g:airline#extensions#ale#enabled = 1

Plugin 'nvie/vim-flake8'

let python_highlight_all=1
syntax on

"Plugin 'jnurmine/Zenburn'

"Plugin 'altercation/vim-colors-solarized'

"if has('gui_running')
  "set background=dark
  "colorscheme solarized
"else
  "colorscheme zenburn
"endif

Plugin 'kien/ctrlp.vim'

"set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

Plugin 'scrooloose/nerdtree'

map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

Plugin 'bling/vim-airline'

Plugin 'vim-airline/vim-airline-themes'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'

Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

Plugin 'sjl/gundo.vim'

Plugin 'davidhalter/jedi-vim'

let g:jedi#completions_enabled = 0
let g:jedi#show_call_signatures = "2"

if has('python3')
    let g:gundo_prefer_python3 = 1
endif

nnoremap <F5> :GundoToggle<CR>

set clipboard=unnamed

Plugin 'scrooloose/syntastic'

let g:syntastic_python_checkers = ['python', 'flake8']
let g:syntastic_python_checker_args='--ignore=E402,E501,E111,E114,E126'
let g:syntastic_python_flake8_args = "--max-line-length=160"


" tab navigation
nnoremap <C-j> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>
nnoremap <C-t> :tabnew<CR>
inoremap <C-j> <Esc>:tabprevious<CR>i
inoremap <C-l> <Esc>:tabnext<CR>i
inoremap <C-t> <Esc>:tabnew<CR>

" switch buffer
nnoremap P :b#<CR>

" Exit
nnoremap Q  :q<CR>
inoremap Q <Esc> :q<CR>i

" python indent

au Filetype python
    \ set tabstop=4
    \ | set softtabstop=4
    \ | set shiftwidth=4
    \ | set textwidth=79
    \ | set expandtab
    \ | set autoindent
    \ | set fileformat=unix

set textwidth=0 wrapmargin=0
