" Display Settings
" -----------------------------------------------------------------------------

" Use TrueColor
if (has("termguicolors"))
 set termguicolors
endif

" Set theme to fairyfloss
syntax enable
colorscheme fairyfloss
let g:airline_theme='fairyfloss'

" Line numbering settings
set number
set relativenumber
set ruler
set nowrap

" Mark the 80 char column
set cursorline cursorcolumn
set colorcolumn=73,81,121

" Always show the status line
set laststatus=2

" Tabline
let g:airline#extensions#tabline#enabled = 1

" Show matching bracket when the cursor has selected a bracket
set showmatch

" Flag problematic whitespace (trailing spaces, spaces before tabs).
highlight BadWhitespace term=standout ctermbg=red guibg=red
match BadWhitespace /[^* \t]\zs\s\+$\| \+\ze\t/

