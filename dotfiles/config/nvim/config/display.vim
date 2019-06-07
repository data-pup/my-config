" Display Settings
" -----------------------------------------------------------------------------

" Use TrueColor
if (has("termguicolors"))
 set termguicolors
endif

" Set theme to fairyfloss
syntax enable
colorscheme fairyfloss
filetype plugin indent on
let g:airline_theme='fairyfloss'

" Line numbering settings
set number
set relativenumber
set ruler
set nowrap

" Mark the 80 char column
set colorcolumn=80
highlight colorcolumn ctermbg=55

" Statusline
set statusline=%t%m\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%03l,%03v][%p%%]
set statusline+=\ %=%{SyntasticStatuslineFlag()}
set laststatus=2 " Always show the status line

" Tabline
let g:airline#extensions#tabline#enabled = 1

" Show matching bracket when the cursor has selected a bracket
set showmatch

" Flag problematic whitespace (trailing spaces, spaces before tabs).
highlight BadWhitespace term=standout ctermbg=red guibg=red
match BadWhitespace /[^* \t]\zs\s\+$\| \+\ze\t/

" Syntastic display settings
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Syntastic error symbols
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"

