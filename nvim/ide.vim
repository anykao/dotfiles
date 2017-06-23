source ~/.config/nvim/init.vim
call plug#begin('~/.nvim/plugged/')
Plug 'Raimondi/delimitMate'
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'bumaociyuan/vim-swift'
Plug 'editorconfig/editorconfig-vim'
Plug 'fatih/vim-go'
Plug 'gavocanov/vim-js-indent'
Plug 'kassio/neoterm'
Plug 'keith/swift.vim'
Plug 'mattn/emmet-vim'
Plug 'mxw/vim-jsx'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'racer-rust/vim-racer'
Plug 'rust-lang/rust.vim'
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'zchee/deoplete-jedi'
call plug#end()
nmap <leader>ev :vs $HOME/dotfiles/nvim/ide.vim<CR>
nmap <leader>sv :so $HOME/dotfiles/nvim/ide.vim<CR>

let g:gitgutter_diff_args = '-w'
let g:jsx_ext_required = 0
let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_completion_start_length = 0
let g:vim_markdown_folding_disabled = 1

let g:racer_experimental_completer = 1
let g:rustfmt_autosave = 1
let g:go_fmt_autosave = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:gocode_gofmt_tabwidth=8


au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap <leader>gd <Plug>(rust-doc)

