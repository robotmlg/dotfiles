set nocompatible

set number
set relativenumber
syntax on

execute pathogen#infect()
set runtimepath^=~/.vim/bundle/ctrlp.vim

set noswapfile

set modelines=0
set encoding=utf-8

set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set cursorline
set visualbell
set ttyfast
set ruler
set laststatus=2
set backspace=2 " make backspace work like most other apps

set autoread

if version>=703
	set undofile
endif

let mapleader=","

let maplocalleader="\\"

set ignorecase
set smartcase

set wrap
set textwidth=79
set formatoptions=qrn1

if exists('+colorcolumn')
  set colorcolumn=81
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

noremap <C-H> <C-W>h
noremap <C-L> <C-W>l
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k

"ideaVim ignore
nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')
nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
"ideaVim ignore end
nnoremap ; :
nnoremap : ;

noremap <C-n> :NERDTreeToggle<CR>

set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

let g:syntastic_check_on_open=1
let g:syntastic_enable_balloons = 1
let g:syntastic_auto_loc_list=1

let java_allow_cpp_keywords=1

let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }

autocmd filetype crontab setlocal nobackup nowritebackup
