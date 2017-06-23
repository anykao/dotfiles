call plug#begin('~/.nvim/plugged/')
Plug 'Raimondi/delimitMate'
Plug 'kassio/neoterm'
Plug 'bling/vim-airline'
Plug 'justinmk/vim-dirvish'
Plug 'thinca/vim-visualstar'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'fatih/vim-go'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'zchee/deoplete-jedi'
Plug 'editorconfig/editorconfig-vim'
Plug 'mattn/emmet-vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'posva/vim-vue'
Plug 'gavocanov/vim-js-indent'
Plug 'airblade/vim-gitgutter'
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
Plug 'othree/html5.vim'
Plug 'bumaociyuan/vim-swift'
Plug 'keith/swift.vim'
Plug 'tyru/open-browser.vim'
Plug 'mhinz/vim-grepper'
Plug 'tomasr/molokai'
Plug 'scrooloose/nerdcommenter'
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
nnoremap <leader>ev :vs $HOME/dotfiles/nvim/ide.vim<CR>
nnoremap <leader>sv :so $HOME/dotfiles/nvim/ide.vim<CR>
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

let g:gitgutter_diff_args = '-w'
let g:jsx_ext_required = 0
let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_completion_start_length = 0
" open-browser
let g:netrw_nogx = 1 " disable netrw's gx mapping.
let g:vim_markdown_folding_disabled = 1
let g:rustfmt_autosave = 1
let g:go_fmt_autosave = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:gocode_gofmt_tabwidth=8

nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)

nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)
nnoremap <leader>ag :Grepper -tool ag -grepprg ag --vimgrep<cr>
nnoremap <leader>*  :Grepper -tool ag -cword -noprompt<cr>

au TabLeave *  let g:lasttab = tabpagenr()
au FileType rust nmap gd <Plug>(rust-def)
"au FileType rust nmap gs <Plug>(rust-def-split)
"au FileType rust nmap gx <Plug>(rust-def-vertical)
au FileType rust nmap <leader>gd <Plug>(rust-doc)

au BufRead *.rs :setlocal tags=./rusty-tags.vi;/
"au BufWrite *.rs :silent! exec "!rusty-tags vi --quiet --start-dir=" . expand('%:p:h') . "&"

