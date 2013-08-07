set nocompatible
filetype off
call pathogen#infect()
syntax on
filetype plugin indent on

let mapleader = ","
let g:github_user = 'anykao'
let g:ScreenImpl = 'Tmux'

set undodir^=~/.vim/undo
set hlsearch
set nonumber
set nowrap
set list
set ignorecase
set smartcase
set pastetoggle=<f12>
set ffs=unix,dos
set encoding=utf-8 " Necessary to show unicode glyphs
set fileencodings=utf-8,euc-jp,cp932
noremap <leader>cd  :cd %:p:h<CR>
noremap <leader>nf  :NERDTreeFind<CR>
noremap <Leader>nt  :NERDTreeToggle<CR>
noremap <Leader>yr  :YRShow<CR>
"For editing the vimrc more easily:
nnoremap <leader>ev :vs $MYVIMRC<CR>
nnoremap <leader>sv :so $MYVIMRC<CR>
nnoremap <silent> <C-H> gT
nnoremap <silent> <C-L> gt
" Use <C-K> to clear the highlighting of :set hlsearch.
nnoremap <silent> <C-K> :nohlsearch<CR><C-K>
" Wrapped lines goes down/up to next row, rather than next line in file.
nnoremap j gj
nnoremap k gk
vnoremap < <gv
vnoremap > >gv
nmap <leader>d <C-W>W<C-D><C-W>W
nmap <leader>u <C-W>W<C-U><C-W>W
"mm to go to matching
map mm %

cabbrev h vert h

" nerdtree options
let g:NERDTreeChDirMode=2
let g:NERDTreeShowBookmarks=1
let g:NERDTreeDirArrows=0
" Vim-Powerline
let g:Powerline_symbols='fancy'
" paredit option
let g:paredit_electric_return=0

" Unite
let g:unite_source_history_yank_enable = 1
call unite#filters#matcher_default#use(['matcher_fuzzy'])
nnoremap <leader>t :<C-u>Unite file_rec/async:!<cr>
nnoremap <leader>f :<C-u>Unite file<cr>
nnoremap <leader>r :<C-u>Unite file_mru<cr>
nnoremap <leader>o :<C-u>Unite outline<cr>
nnoremap <leader>y :<C-u>Unite history/yank<cr>
nnoremap <leader>e :<C-u>Unite buffer<cr>

" Custom mappings for the unite buffer
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  " Play nice with supertab
  let b:SuperTabDisabled=1
  " Enable navigation with control-j and control-k in insert mode
  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
endfunction

au BufNewFile,BufRead *.clj,*cljs set filetype=clojure
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
au BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab

