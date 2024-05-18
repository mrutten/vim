"Plugins, install by running vim +PlugInstall +qall
call plug#begin(expand('~/.vim/plugged'))
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'nordtheme/vim'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
call plug#end()

" Shortcuts
map <F3> :set invnumber<CR>:set invrelativenumber<CR>
map <F4> :set list!<CR>
nnoremap <silent> <C-j> :m .+1<CR>==
nnoremap <silent> <C-k> :m .-2<CR>==
vnoremap <silent> <C-j> :m '>+1<CR>gv=gv
vnoremap <silent> <C-k> :m '<-2<CR>gv=gv

" Settings
set clipboard=unnamed,unnamedplus
"set mouse=nicr
set invnumber
set invrelativenumber
set listchars=trail:·,space:␣,eol:§,tab:→\ ,extends:»,precedes:«,nbsp:‡
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set termguicolors
set encoding=UTF-8
set guifont=Hack\ Nerd\ Font\ 9

"Syntax Highlighting
filetype plugin indent on
syntax on

"Nord Colorscheme
"colorscheme nord
"let g:airline_theme = 'nord'

"Catpuccin Colorscheme
colorscheme catppuccin_mocha
let g:airline_theme = 'catppuccin_mocha'

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
