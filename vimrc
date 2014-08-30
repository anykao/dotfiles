if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

NeoBundle 'Raimondi/delimitMate'
NeoBundle 'bling/vim-airline'
NeoBundle 'editorconfig/editorconfig-vim'
NeoBundle 'guns/vim-clojure-static'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'kien/rainbow_parentheses.vim'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'sickill/vim-monokai'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'thinca/vim-visualstar'
NeoBundle 'tpope/vim-abolish'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tpope/vim-eunuch'
NeoBundle 'tpope/vim-fireplace'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-git'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'tpope/vim-sensible'
NeoBundle 'tpope/vim-rsi'
NeoBundle 'tpope/vim-sleuth'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'vim-scripts/paredit.vim'
NeoBundle 'fatih/vim-go'

call neobundle#end()

" Required:
filetype plugin indent on

let mapleader = ","
set t_Co=256

set clipboard=unnamed
set encoding=utf-8 " Necessary to show unicode glyphs
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
set nonumber
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

"cabbrev h tab h
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

