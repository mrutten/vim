"Plugins, install by running vim +PlugInstall +qall
call plug#begin(expand('~/.vim/plugged'))
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'mzlogin/vim-markdown-toc'
Plug 'nordtheme/vim'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

"Mappings
map <F2> :tabe .<CR>
map <F3> :set number! relativenumber!<CR> 
map <F4> :set list!<CR>
nnoremap <silent> <C-h> :nohlsearch<CR>
nnoremap <silent> <C-j> :m .+1<CR>==
nnoremap <silent> <C-k> :m .-2<CR>==
vnoremap <silent> <C-j> :m '>+1<CR>gv=gv
vnoremap <silent> <C-k> :m '<-2<CR>gv=gv

"Settings
set clipboard=unnamed,unnamedplus
set encoding=UTF-8
set expandtab "Use the appropriate number of spaces to insert a <Tab>
set hlsearch "When there is a previous search pattern, highlight all its matches
set incsearch "While typing a search command, show where the pattern, as it was typed so far, matches
set listchars=trail:·,space:␣,eol:§,tab:→\ ,extends:»,precedes:«,nbsp:‡
set number "precede each line with its line number
set relativenumber "Show the line number relative to the line with the cursor in front of each line
set scrolloff=8 "Minimal number of screen lines to keep above and below the cursor
set shiftwidth=4 "'shiftwidth' value unless it is zero, in which case it is the 'tabstop'
set softtabstop=4 "Number of spaces that a <Tab> counts for while performing editing operations
set tabstop=4 "Number of spaces that a <Tab> in the file counts for
set termguicolors "When on, uses highlight-guifg and highlight-guibg attributes in the terminal

"Syntax Highlighting
syntax on
filetype plugin indent on

"Colorschemes
"colorscheme nord
"let g:airline_theme = 'nord'
colorscheme catppuccin_mocha
let g:airline_theme = 'catppuccin_mocha'

"air-line
let g:airline_powerline_fonts = 1 

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

"Unicode symbols
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
  
"Powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'

