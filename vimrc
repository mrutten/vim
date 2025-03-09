"Plugins, install by running vim +PlugInstall +qall
call plug#begin(expand('~/.vim/plugged'))
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'mzlogin/vim-markdown-toc'
Plug 'nordtheme/vim'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dhruvasagar/vim-table-mode'
call plug#end()

"Mappings
" map space to default leader so showcmd works
map <space> \
nnoremap <leader>e :e .<CR>
" Reload vimrc configuration changes, noh prevents highlight from triggering
 noremap <leader>r :so $MYVIMRC \| noh<CR>
" Terminal, CTRL /
nnoremap <C-_> :ter<CR>
nnoremap <leader>n :set number! relativenumber!<CR>
" Toggle invisible characters
nnoremap <leader>l :set list!<CR>
" Clear search highlighting
nnoremap <leader>h :noh<CR>

nnoremap <silent> <C-j> :m .+1<CR>==
nnoremap <silent> <C-k> :m .-2<CR>==
vnoremap <silent> <C-j> :m '>+1<CR>gv=gv
vnoremap <silent> <C-k> :m '<-2<CR>gv=gv

"Settings
set clipboard=unnamed,unnamedplus
set cursorline "kighlight the text line of the cursor with CursorLine |hl-CursorLine|.
set expandtab "Use the appropriate number of spaces to insert a <Tab>
set hlsearch "When there is a previous search pattern, highlight all its matches
set incsearch "While typing a search command, show where the pattern, as it was typed so far, matches
set laststatus=2 "The value of this option influences when the last window will have a status line
set listchars=trail:·,space:␣,eol:§,tab:→\ ,extends:»,precedes:«,nbsp:‡
set number "precede each line with its line number
set relativenumber "Show the line number relative to the line with the cursor in front of each line
set scrolloff=8 "Minimal number of screen lines to keep above and below the cursor
set shiftwidth=4 "'shiftwidth' value unless it is zero, in which case it is the 'tabstop'
set softtabstop=4 "Number of spaces that a <Tab> counts for while performing editing operations
set tabstop=4 "Number of spaces that a <Tab> in the file counts for
set termguicolors "When on, uses highlight-guifg and highlight-guibg attributes in the terminal
set timeoutlen=300

"Syntax Highlighting
filetype plugin indent on
syntax on

"Colorschemes
colorscheme catppuccin_mocha
" Reference "Palette" section on https://github.com/catppuccin/catppuccin for color codes
" Overriding some components
" Relative and active line numbers
highlight LineNr guifg=#9399b2
" Current line number
highlight CursorLineNr guifg=#bac2de
" Comment color
highlight Comment guifg=#f9e2af

" Airline
let g:airline_theme = 'catppuccin_mocha'
let g:airline_powerline_fonts = 1 

"vim-markdown-toc
let g:vmt_auto_update_on_save = 1

