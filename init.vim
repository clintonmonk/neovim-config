call plug#begin()
Plug 'fatih/vim-go'
Plug 'Chiel92/vim-autoformat'
"Plug 'scwood/vim-hybrid'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'neomake/neomake'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'zchee/deoplete-jedi'
Plug 'wokalski/autocomplete-flow'
"Plug 'altercation/vim-colors-solarized'
Plug 'iCyMind/NeoSolarized'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
"Plug 'vim-syntastic/syntastic'
call plug#end()

" neomake settings
autocmd! BufWritePost * Neomake

let mapleader = ","

" faster vimrc editing
nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" deoplete
let g:deoplete#enable_at_startup = 1
"let g:deoplete#disable_auto_complete = 1

" deoplete go
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
let g:deoplete#sources#go#use_cache = 1

" deoplete jedi
let g:python_host_prog = $HOME.'/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = $HOME.'/.pyenv/versions/neovim3/bin/python'

" allow CMD+C copying
set mouse=

" autoformat settings
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0
"let g:formatter_yapf_style = 'pep8'
"let g:autoformat_verbosemode = 1
"au BufWritePost * :Autoformat

" vim-go settings
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_disable_autoinstall = 1
au FileType go nnoremap <leader>r <Plug>(go-run)
au FileType go nnoremap <leader>b <Plug>(go-build)
au FileType go nnoremap <leader>t <Plug>(go-test)
au FileType go nnoremap <leader>c <Plug>(go-coverage)
au FileType go nnoremap <Leader>ds <Plug>(go-def-split)
au FileType go nnoremap <Leader>dv <Plug>(go-def-vertical)
au FileType go nnoremap <Leader>dt <Plug>(go-def-tab)
au FileType go nnoremap <Leader>i <Plug>(go-info)
au FileType go nnoremap <Leader>e <Plug>(go-rename)

"let g:syntastic_go_checkers = ['govet', 'errcheck', 'go']
"let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

" nerdtree settings
noremap <C-n> :NERDTreeToggle<CR>
let g:NERDTreeIgnore=['\.pyc$', '\~$', '__pycache__']

" CtrlP settings
let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'

" vim-jsx settings
let g:jsx_ext_required = 0

" general
set visualbell
set shiftwidth=4
set tabstop=4
set expandtab
"set relativenumber
set nu
set clipboard=unnamed
set encoding=utf-8
set fileencoding=utf-8
scriptencoding utf-8
set ruler

" regex
set ignorecase
set smartcase
set gdefault

" highlight search results
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

" theme
set background=dark
"colorscheme solarized
colorscheme NeoSolarized
