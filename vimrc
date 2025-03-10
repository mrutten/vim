"plugins
call plug#begin(expand('~/.vim/plugged'))
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'dhruvasagar/vim-table-mode'
Plug 'junegunn/fzf.vim'
Plug 'mzlogin/vim-markdown-toc'
Plug 'nordtheme/vim'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

"buffer 2-key abbreviations
cnoreabbrev bf enew
cnoreabbrev bh new
cnoreabbrev bv vnew

let mapleader = " "

" mappings, alphabetically
"fzf file finder
nnoremap <leader>f :Files<CR>
"clear search highlighting
nnoremap <leader>h :noh<CR>
"toggle invisible characters
nnoremap <leader>l :set list!<CR>
"toggle numbers
nnoremap <leader>n :set number! relativenumber!<CR>
"reload vimrc
nnoremap <leader>r :so $MYVIMRC \| noh<CR>
"shell
nnoremap <leader>s :sh<CR>
"terminal
nnoremap <leader>t :ter<CR>

"move lines
nnoremap <silent> <C-j> :m .+1<CR>==
nnoremap <silent> <C-k> :m .-2<CR>==
vnoremap <silent> <C-j> :m '>+1<CR>gv=gv
vnoremap <silent> <C-k> :m '<-2<CR>gv=gv

"settings
set clipboard=unnamed,unnamedplus
set cursorline "kighlight the text line of the cursor with CursorLine |hl-CursorLine|.
set encoding=UTF-8
set expandtab "Use the appropriate number of spaces to insert a <Tab>
set hidden "When off a buffer is unloaded when it is abandoned.  When on a buffer becomes hidden when it is abandoned
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
set timeoutlen=500 "Timeout for listening to commands

"syntax highlighting
filetype plugin indent on
syntax on

"colorschemes
colorscheme catppuccin_mocha
" Reference "Palette" section on https://github.com/catppuccin/catppuccin for color codes
" Overriding some components
" Relative and active line numbers
highlight LineNr guifg=#9399b2
" Current line number
highlight CursorLineNr guifg=#bac2de
" Comment color
highlight Comment guifg=#f9e2af

"plugin settings

"airline
"https://github.com/vim-airline/vim-airline/blob/master/doc/airline.txt
let g:airline_theme = 'catppuccin_mocha'
let g:airline_powerline_fonts = 1 
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#buffer_min_count =2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
  let g:airline#extensions#tabline#buffer_idx_format = {
        \ '0': '0 ',
        \ '1': '1 ',
        \ '2': '2 ',
        \ '3': '3 ',
        \ '4': '4 ',
        \ '5': '5 ',
        \ '6': '6 ',
        \ '7': '7 ',
        \ '8': '8 ',
        \ '9': '9 '
        \}
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>0 <Plug>AirlineSelectTab0
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>= <Plug>AirlineSelectNextTab

"fzf
"initialize configuration dictionary
let g:fzf_vim = {}

"vim-markdown-toc
let g:vmt_auto_update_on_save = 1

