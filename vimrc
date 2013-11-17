set nocompatible
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle/
endif
call neobundle#rc(expand('~/.vim/bundle/'))
" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'
"NeoBundle 'scrooloose/syntastic'
"NeoBundle 'Valloric/YouCompleteMe'
"NeoBundle 'airblade/vim-gitgutter'
"NeoBundle 'Lokaltog/vim-easymotion'

NeoBundle 'Blackrush/vim-gocode'
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'basyura/unite-rails'
NeoBundle 'benmills/vimux'
NeoBundle 'bling/vim-airline'
NeoBundle 'chrisbra/csv.vim'
NeoBundle 'christoomey/vim-tmux-navigator'
NeoBundle 'editorconfig/editorconfig-vim'
NeoBundle 'evanmiller/nginx-vim-syntax'
NeoBundle 'guns/vim-clojure-static'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'ivanov/vim-ipython'
NeoBundle 'junegunn/vim-easy-align'
NeoBundle 'justinmk/vim-sneak'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'kien/rainbow_parentheses.vim'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'mhinz/vim-signify'
NeoBundle 'mileszs/ack.vim'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'sickill/vim-monokai'
NeoBundle 'terryma/vim-expand-region'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'thinca/vim-visualstar'
NeoBundle 'tpope/vim-abolish'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tpope/vim-eunuch'
NeoBundle 'tpope/vim-fireplace'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-git'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-rsi'
NeoBundle 'tpope/vim-sensible'
NeoBundle 'tpope/vim-sleuth'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'vim-scripts/paredit.vim'

filetype plugin indent on
syntax enable
NeoBundleCheck
try
  source ~/.vimrc.local
catch
endtry
syntax on

let mapleader = ","
let g:mapleader = ","
let maplocalleader = ","
let g:maplocalleader = ","
set t_Co=256
"colorscheme jellybeans

set clipboard=unnamed
set encoding=utf-8 " Necessary to show unicode glyphs
set ffs=unix,dos
set fileencodings=utf-8,euc-jp,cp932
set hidden
set hlsearch
set ignorecase
set list
set nobackup
set nowritebackup
set noswapfile
set nonumber
set nowrap
set pastetoggle=<f12>
set smartcase
set undodir^=~/.vim/undo
set iskeyword-=_
set iskeyword+=:

noremap <leader>cd  :cd %:p:h<CR>
noremap <leader>nf  :NERDTreeFind<CR>
noremap <leader>nt  :NERDTreeToggle<CR>
nnoremap <leader>ev :vs $MYVIMRC<CR>
nnoremap <leader>sv :so $MYVIMRC<CR>
nnoremap <silent> <TAB> :nohlsearch<CR><TAB>
" Wrapped lines goes down/up to next row, rather than next line in file.
nnoremap j gj
nnoremap k gk
vnoremap < <gv
vnoremap > >gv
map mm %
noremap H ^
noremap L g_
nnoremap <silent> h gT
nnoremap <silent> l gt
"cabbrev h tab h
cabbrev h vert h

" nerdtree options
let g:NERDTreeChDirMode=2
let g:NERDTreeShowBookmarks=1
let g:NERDTreeDirArrows=0
" paredit option
let g:paredit_electric_return=0
let g:gocode_gofmt_tabwidth=8

" Unite
let g:unite_source_history_yank_enable = 1
cal unite#filters#matcher_default#use(['matcher_fuzzy'])
nnoremap <leader>t :<C-u>Unite tab<cr>
nnoremap <leader>f :<C-u>Unite file<cr>
nnoremap <leader>r :<C-u>Unite file_mru<cr>
nnoremap <leader>o :<C-u>Unite outline<cr>
nnoremap <leader>y :<C-u>Unite history/yank<cr>
nnoremap <leader>e :<C-u>Unite buffer<cr>

let g:VimuxOrientation = "h"
let g:VimuxHeight = "30"
nnoremap <leader>rb :call VimuxRunCommand("clear; rspec " . bufname("%"))<CR>
nnoremap <leader>vp :VimuxPromptCommand<CR>
nnoremap <leader>vl :VimuxRunLastCommand<CR>
nnoremap <leader>vi :VimuxInspectRunner<CR>
nnoremap <leader>vq :VimuxCloseRunner<CR>
nnoremap <leader>vx :VimuxInterruptRunner<CR>

map K <Plug>(expand_region_expand)
map J <Plug>(expand_region_shrink)

vnoremap <silent> <Enter> :EasyAlign<Enter>
vnoremap <silent> <leader><Enter> :LiveEasyAlign<Enter>


au BufNewFile,BufRead *.clj,*cljs set filetype=clojure
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
au BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab

