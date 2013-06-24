set nocompatible
filetype off
call pathogen#infect()
syntax on
filetype plugin indent on

let mapleader = ","
let g:github_user = 'anykao'
let g:ScreenImpl = 'Tmux'

set undodir^=~/.vim/undo
set nohlsearch
set number
set list
set pastetoggle=<f12>
set ffs=unix,dos
set encoding=utf-8 " Necessary to show unicode glyphs
set fileencodings=utf-8,euc-jp,cp932
" alt+n or alt+p to navigate between entries in QuickFix
" noremap <silent> <a-p> :cp <cr>
" noremap <silent> <a-n> :cn <cr>
noremap <leader>r   :MRU<CR>
noremap <leader>cd  :cd %:p:h<CR>
noremap <leader>nf  :NERDTreeFind<CR>
noremap <Leader>nt  :NERDTreeToggle<CR>
noremap <Leader>yr  :YRShow<CR>
"For editing the vimrc more easily:
nnoremap <leader>ev :vs $MYVIMRC<CR>
nnoremap <leader>sv :so $MYVIMRC<CR>
"For accessing the bashrc file more easily:
nnoremap <leader>eb :vs ~/.bashrc<CR>
noremap <leader>c  :noh<CR>
noremap <C-H> gT
noremap <C-L> gt
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

" In visual mode when you press * or # to search for the current selection
vnoremap <silent> * :call VisualSearch('f')<CR>
vnoremap <silent> # :call VisualSearch('b')<CR>

" When you press gv you vimgrep after the selected text
vnoremap <silent> gv :call VisualSearch('gv')<CR>
map <leader>g :vimgrep // **/*.<left><left><left><left><left><left><left>

function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction
function! VisualSearch(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

au BufNewFile,BufRead *.clj,*cljs set filetype=clojure
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

