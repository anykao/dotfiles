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
Plug 'editorconfig/editorconfig-vim'
Plug 'airblade/vim-gitgutter'
Plug 'tyru/open-browser.vim'
Plug 'mhinz/vim-grepper'
Plug 'tomasr/molokai'
Plug 'scrooloose/nerdcommenter'
Plug 'rust-lang/rust.vim'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': './install.sh'
    \ }
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

let g:rustfmt_autosave = 1
let g:gitgutter_diff_args = '-w'
let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_completion_start_length = 0
let g:go_fmt_autosave = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:gocode_gofmt_tabwidth=8

" open-browser
let g:netrw_nogx = 1 " disable netrw's gx mapping.
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)

au TabLeave *  let g:lasttab = tabpagenr()


nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)
nnoremap <leader>ag :Grepper -tool ag -grepprg ag --vimgrep<cr>
nnoremap <leader>*  :Grepper -tool ag -cword -noprompt<cr>

let g:LanguageClient_serverCommands = {
    \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
    \ 'javascript': ['javascript-typescript-stdio'],
    \ 'javascript.jsx': ['javascript-typescript-stdio'],
    \ }

nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>

