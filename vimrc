call plug#begin('~/.vim/plugged/')

Plug 'Raimondi/delimitMate'
Plug 'bling/vim-airline'
Plug 'editorconfig/editorconfig-vim'
Plug 'guns/vim-clojure-static'
Plug 'kien/ctrlp.vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'sickill/vim-monokai'
Plug 'terryma/vim-multiple-cursors'
Plug 'thinca/vim-visualstar'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'vim-scripts/paredit.vim'
Plug 'fatih/vim-go'

call plug#end()

let mapleader = ","

set clipboard=unnamed
set ffs=unix,dos
set fileencodings=utf-8,euc-jp,cp932
set hidden
set hlsearch
set ignorecase
set list
set nobackup
set backupdir=
set nowritebackup
set noswapfile
set number
set nowrap
set pastetoggle=<f12>
set smartcase
set undodir^=~/.vim/undo
set directory^=~/.vim/undo
set iskeyword-=_
set iskeyword+=:

noremap <leader>cd  :cd %:p:h<CR>
noremap <leader>f  :NERDTreeFind<CR>
nnoremap <leader>ev :vs $MYVIMRC<CR>
nnoremap <leader>sv :so $MYVIMRC<CR>

nnoremap j gj
nnoremap k gk
vnoremap < <gv
vnoremap > >gv
map mm %
noremap H ^
noremap L g_

cabbrev h vert h

" nerdtree options
let g:NERDTreeChDirMode=2
let g:NERDTreeShowBookmarks=1
let g:NERDTreeDirArrows=0
" paredit option
let g:paredit_electric_return=0
let g:gocode_gofmt_tabwidth=8

au BufNewFile,BufRead *.clj,*cljs set filetype=clojure
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
au BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab

