call plug#begin('~/.nvim/plugged/')
Plug 'Raimondi/delimitMate'
Plug 'bling/vim-airline'
Plug 'editorconfig/editorconfig-vim'
Plug 'guns/vim-clojure-static'
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
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-repeat'
Plug 'airblade/vim-gitgutter'
Plug 'vim-scripts/paredit.vim'
Plug 'fatih/vim-go'
Plug 'tyru/open-browser.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
Plug 'cespare/vim-toml'
Plug 'mhinz/vim-grepper'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'gavocanov/vim-js-indent'
Plug 'neomake/neomake'
Plug 'leafgarland/typescript-vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'tomasr/molokai'
Plug 'romainl/vim-qf'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'pbrisbin/vim-mkdir'
Plug 'timonv/vim-cargo'
Plug 'christoomey/vim-tmux-runner'
call plug#end()

let mapleader = ","

colorscheme molokai
let g:molokai_original = 1

set termguicolors
set clipboard=unnamed,unnamedplus
set ffs=unix,dos
set fileencodings=utf-8,euc-jp,cp932
set hidden
set hlsearch
set smartcase
set ignorecase
set list
set nobackup
set backupdir=
set nowritebackup
set noswapfile
set number
set nowrap
set undodir^=~/.nvim/undo
set directory^=~/.nvim/undo
"set iskeyword-=_
set iskeyword+=/
set completeopt-=preview

nnoremap <leader>cd :cd %:p:h<CR>
nnoremap <leader>f  :NERDTreeFind<CR>
nnoremap <leader>ev :vs $MYVIMRC<CR>
nnoremap <leader>sv :so $MYVIMRC<CR>
nnoremap <leader>jd :YcmCompleter GoTo<CR>


nnoremap j gj
nnoremap k gk
vnoremap < <gv
vnoremap > >gv
nnoremap H ^
nnoremap L g_
xnoremap p "_dp

cabbrev h tab h
let g:lasttab = 1
nmap tt :exe "tabn ".g:lasttab<CR>

let g:gitgutter_diff_args = '-w'
let g:jsx_ext_required = 0
" nerdtree options
let g:NERDTreeChDirMode=2
let g:NERDTreeShowBookmarks=1
let g:NERDTreeDirArrows=0
let g:NERDTreeQuitOnOpen=1

" open-browser
let g:netrw_nogx = 1 " disable netrw's gx mapping.
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)
nmap <Home>     <Plug>QfCprevious
nmap <End>      <Plug>QfCnext
nmap <leader>q  <Plug>QfCtoggle

let g:rustfmt_autosave = 1
let g:go_fmt_autosave = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:gocode_gofmt_tabwidth=8

au FileType go nmap <leader>gr <Plug>(go-run-tab)
au FileType go nmap <leader>gb <Plug>(go-build)
au FileType go nmap <leader>gt <Plug>(go-test)
au FileType go nmap <leader>gc <Plug>(go-coverage)
au FileType go nmap <leader>gd <Plug>(go-doc-browser)
au FileType go nmap <leader>gi <Plug>(go-info)
au FileType go nmap <leader>ge <Plug>(go-rename)
au TabLeave *  let g:lasttab = tabpagenr()

nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)
nnoremap <leader>ag :Grepper -tool ag -grepprg ag --vimgrep<cr>
nnoremap <leader>*  :Grepper -tool ag -cword -noprompt<cr>

