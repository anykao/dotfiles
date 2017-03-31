call plug#begin('~/.nvim/plugged/')
Plug 'bling/vim-airline'
Plug 'thinca/vim-visualstar'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-surround'
Plug 'fatih/vim-go'
Plug 'bumaociyuan/vim-swift'
Plug 'tyru/open-browser.vim'
Plug 'mhinz/vim-grepper'
Plug 'tomasr/molokai'
Plug 'pbrisbin/vim-mkdir'
call plug#end()

let mapleader = ","

colorscheme molokai
let g:molokai_original = 1

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
nnoremap <leader>ev :vs $MYVIMRC<CR>
nnoremap <leader>sv :so $MYVIMRC<CR>

nnoremap j gj
nnoremap k gk
vnoremap < <gv
vnoremap > >gv
nnoremap H ^
nnoremap L g_

cabbrev h tab h
let g:lasttab = 1
nmap tt :exe "tabn ".g:lasttab<CR>

" open-browser
let g:netrw_nogx = 1 " disable netrw's gx mapping.
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)
nmap <Home>     <Plug>QfCprevious
nmap <End>      <Plug>QfCnext
nmap <leader>q  <Plug>QfCtoggle

au TabLeave *  let g:lasttab = tabpagenr()

nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)
nnoremap <leader>ag :Grepper -tool ag -grepprg ag --vimgrep<cr>
nnoremap <leader>*  :Grepper -tool ag -cword -noprompt<cr>

