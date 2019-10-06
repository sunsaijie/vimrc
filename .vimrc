syntax on
set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on 
set mouse=a
set encoding=utf-8
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
augroup pythonset
  autocmd!
  autocmd BufNewFile,BufRead *.py set tabstop=4
  autocmd BufNewFile,BufRead *.py set softtabstop=4
  autocmd BufNewFile,BufRead *.py set shiftwidth=4
augroup END

set scrolloff=5
set backspace=indent,eol,start
set foldmethod=indent
set foldlevel=99
set laststatus=2
set autochdir

set number
set norelativenumber
set cursorline
set wrap
set showcmd
set wildmenu
set hlsearch
set incsearch
exec "set nohlsearch"
set ignorecase
set smartcase
"======
"key mapping
"======
let mapleader=" "
nnoremap <c-h> :nohlsearch<cr>
nnoremap S :w<cr>
nnoremap R :source $MYVIMRC<cr>
map s <nop>
nnoremap Q :q<cr>
inoremap jk <esc>
nnoremap <c-j> 5j
nnoremap <c-k> 5k

noremap sl :set splitright<Cr>:vsplit<Cr>
noremap sh :set nosplitright<cr>:vsplit<cr> 
noremap sk :set nosplitbelow<cr>:split<cr>
noremap sj :set splitbelow<cr>:split<cr>

map <LEADER>h  <C-w>h
map <LEADER>j <c-w>j
map <LEADER>k <c-w>k
map <LEADER>l <c-w>l

map <up> :res +5<cr>
map <down> :res -5<cr>
map <left> :vertical resize _5<cr>
map <right> :vertical resize +5<cr>

map tu :tabe<cr>
nnoremap tj :+tabnext<cr>
nnoremap tk :-tabnext<cr>
inoremap <c-v> <c-r>*

"======
"plugins install
"======
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'
Plug 'scrooloose/nerdtree'
Plug 'ycm-core/YouCompleteMe'
Plug 'dense-analysis/ale'
Plug 'majutsushi/tagbar'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'suan/vim-instant-markdown'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jiangmiao/auto-pairs'
Plug 'joshdick/onedark.vim'
Plug 'skywind3000/asyncrun.vim'
call plug#end()
set updatetime=100

map tt :NERDTreeToggle<cr>

"======
"youcompleteme
"======
nnoremap gd :YcmCompleter GoToDefinitionElseDeclaration<cr>
nnoremap g/ :YcmCompleter GetDoc<cr>
nnoremap gt :YcmCompleter GetType<cr>
nnoremap gr :YcmCompleter GoToReferences<cr>
let g:ycm_autoclose_preview_window_after_insertion=1
let g:ycm_autoclose_preview_window_after_completion=0
let g:ycm_use_clangd=0
let g:ycm_python_interpreter_path="/usr/local/bin/python3"
let g:ycm_python_binary_path="/usr/local/bin/python3"
"color snazzy
"let g:SnazzyTransparent = 1


let b:ale_linters = ['flake8', 'pylint']
let b:ale_fixers = ['autopep8', 'yapf']
let b:ale_warn_about_trailing_whitespace = 0
let g:ale_open_list = 0
let g:ale_keep_list_window_open = 0
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'

nmap T :TagbarToggle<CR>
"let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size=1
let g:indent_guides_start_level=2
let g:indent_guides_color_change_percent=2

nnoremap <LEADER>r :AsyncRun -raw python3 %<cr>:copen<cr>

colorscheme onedark
