call plug#begin('~/.nvim/plugged/')
"Plug 'bling/vim-airline'
Plug 'Shougo/deoplete.nvim'
Plug 'justinmk/vim-dirvish'
Plug 'thinca/vim-visualstar'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-surround'
Plug 'tyru/open-browser.vim'
Plug 'mhinz/vim-grepper'
Plug 'tomasr/molokai'
Plug 'scrooloose/nerdcommenter'
Plug 'keith/swift.vim'
call plug#end()

let mapleader = ","

colorscheme molokai
let g:molokai_original = 1

set clipboard+=unnamedplus
set ffs=unix,dos
set fileencodings=utf-8,euc-jp,cp932
set hidden
set number
set list

nnoremap <leader>cd :cd %:p:h<CR>
nnoremap <leader>ev :vs $MYVIMRC<CR>
nnoremap <leader>sv :so $MYVIMRC<CR>
nnoremap <C-_> :call NERDComment(0,"toggle")<CR>


nnoremap j gj
nnoremap k gk
vnoremap < <gv
vnoremap > >gv
nnoremap H ^
nnoremap L g_

cabbrev h tab h
let g:lasttab = 1
nmap tt :exe "tabn ".g:lasttab<CR>

let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#auto_completion_start_length = 0
" open-browser
let g:netrw_nogx = 1 " disable netrw's gx mapping.
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)

au TabLeave *  let g:lasttab = tabpagenr()

nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)
nnoremap <leader>ag :Grepper -tool ag -grepprg ag --vimgrep<cr>
nnoremap <leader>*  :Grepper -tool ag -cword -noprompt<cr>


