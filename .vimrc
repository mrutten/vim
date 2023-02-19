"Plugins, install by running vim +PlugInstall +qall
call plug#begin(expand('~/.vim/plugged'))
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
"Plug 'Badacadabra/vim-archery'
Plug 'crusoexia/vim-monokai'
Plug 'rust-lang/rust.vim'
call plug#end()

" Shortcuts
map <F2> :NERDTreeToggle<CR>
map <F3> :set invnumber<CR>:set invrelativenumber<CR>
  
" Settings
set mouse=nicr
set invnumber
set invrelativenumber
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set termguicolors
set encoding=UTF-8
set guifont=Hack\ Nerd\ Font\ 9
syntax on
filetype plugin indent on
let g:rustfmt_autosave = 1 "automatic :RustFmt when saving a buffer
colorscheme monokai
let g:airline_theme = 'molokai'
"
" Close vim after all documents are closed instead of leaving NerdTree open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" air-line
let g:airline_powerline_fonts = 1 

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'
  
" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'
