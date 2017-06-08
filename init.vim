call plug#begin()
Plug 'fatih/vim-go'
Plug 'Chiel92/vim-autoformat'
"Plug 'scwood/vim-hybrid'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'neomake/neomake'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'altercation/vim-colors-solarized'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
call plug#end()

let mapleader = ","

" allows CMD+C copying
set mouse=

" --- autofmt plugin settings
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0

" --- vim-go settings
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_disable_autoinstall = 1

" --- nerdtree settings
noremap <C-n> :NERDTreeToggle<CR>

" --- CtrlP settings
let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'

" --- vim-jsx settings
let g:jsx_ext_required = 0

" --- neomake settings
autocmd! BufWritePost * Neomake

set visualbell
set shiftwidth=4
set tabstop=4
set expandtab
set relativenumber
set clipboard=unnamed
set encoding=utf-8
set fileencoding=utf-8
scriptencoding utf-8
set ruler

" saner regex
set ignorecase
set smartcase
set gdefault

" highlight search results when typing
set incsearch
set showmatch
set hlsearch

" faster scrolling
set ttyfast
set lazyredraw

" syntax on
filetype plugin indent on

" let backspace work in insert mode
set backspace=indent,eol,start

set background=dark

au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)

au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>e <Plug>(go-rename)

:nnoremap j gj
:nnoremap k gk

noremap <Leader>n :bnext <CR>
noremap <Leader>p :bprev <CR>
nnoremap <Leader>ll :ls <CR>

let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
let g:solarized_termtrans =  1
let g:solarized_termcolors=16
colo solarized
