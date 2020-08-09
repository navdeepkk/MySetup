execute pathogen#infect()
syntax on
filetype plugin indent on

"--------------------------------------------------------------config for ycm
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_max_diagnostics_to_display = 0
"let g:loaded_youcompleteme = 1--------------------------------TO DISABLE YCM
autocmd BufNewFile,BufRead *.cu set filetype=cpp

"-------------------------------------------------------config for indentLine
let g:indentLine_color_term = 239

"-------------------------------------------------------config for nerdtree
autocmd vimenter * NERDTree
autocmd VimEnter * wincmd p
" Close VIM if nerdtree is the only window left open.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" General
set number	" Show line numbers
set linebreak	" Break lines at word (requires Wrap lines)
" set textwidth=100	" Line wrap (number of cols)
set showmatch	" Highlight matching brace

set hlsearch	" Highlight all search results
set ignorecase	" Always case-insensitive
set incsearch	" Searches for strings incrementally

set autoindent	" Auto-indent new lines
set cindent	" Use 'C' style program indenting
set shiftwidth=2	" Number of auto-indent spaces
set smartindent	" Enable smart-indent
set smarttab	" Enable smart-tabs
set softtabstop=2	" Number of spaces per Tab
set updatetime=100
set shortmess-=S

noremap % v%
" for copying and pasting
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p


" Advanced
set ruler	" Show row and column ruler information
set backspace=indent,eol,start	" Backspace behaviour
