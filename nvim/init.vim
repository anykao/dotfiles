call plug#begin('~/.nvim/plugged/')
Plug 'Raimondi/delimitMate'
Plug 'bling/vim-airline'
Plug 'editorconfig/editorconfig-vim'
Plug 'guns/vim-clojure-static'
Plug 'kien/rainbow_parentheses.vim'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
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
Plug 'tpope/vim-repeat'
Plug 'vim-scripts/paredit.vim'
Plug 'fatih/vim-go'
Plug 'tyru/open-browser.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'wting/rust.vim'
Plug 'cespare/vim-toml'
Plug 'mhinz/vim-grepper'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'neomake/neomake'
Plug 'leafgarland/typescript-vim'
Plug 'godlygeek/tabular'
Plug 'kchmck/vim-coffee-script'
"Plug 'junegunn/fzf.vim'
Plug 'tomasr/molokai'
call plug#end()

let mapleader = ","

colorscheme molokai
let g:molokai_original = 1

set clipboard=unnamed,unnamedplus
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
set undodir^=~/.nvim/undo
set directory^=~/.nvim/undo
set iskeyword-=_
set iskeyword+=:
set completeopt-=preview

nnoremap <leader>cd  :cd %:p:h<CR>
nnoremap <leader>f   :NERDTreeFind<CR>
nnoremap <leader>ev :vs $MYVIMRC<CR>
nnoremap <leader>sv :so $MYVIMRC<CR>
nnoremap <leader>jd :YcmCompleter GoTo<CR>


nnoremap j gj
nnoremap k gk
vnoremap < <gv
vnoremap > >gv
nnoremap H ^
nnoremap L g_

cabbrev h tab h
let g:lasttab = 1
nmap tt :exe "tabn ".g:lasttab<CR>

let g:jsx_ext_required = 0
" nerdtree options
let g:NERDTreeChDirMode=2
let g:NERDTreeShowBookmarks=1
let g:NERDTreeDirArrows=0
let g:NERDTreeQuitOnOpen=1

" paredit option
let g:paredit_electric_return=0
let g:gocode_gofmt_tabwidth=8

" open-browser
let g:netrw_nogx = 1 " disable netrw's gx mapping.
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)

let g:go_fmt_autosave = 1
let g:go_bin_path = expand("~/.gotools")
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

au BufNewFile,BufRead *.clj,*cljs set filetype=clojure
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
au BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab

au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>db <Plug>(go-doc-browser)
au TabLeave *  let g:lasttab = tabpagenr()

nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)
nnoremap <leader>g :Grepper -tool ag<cr>
nnoremap <leader>* :Grepper -tool ag -cword -noprompt<cr>

