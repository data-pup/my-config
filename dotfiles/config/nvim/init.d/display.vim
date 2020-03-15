" Display Settings
" -----------------------------------------------------------------------------

" Use TrueColor
if (has("termguicolors"))
 set termguicolors
endif

" Theme settings
syntax enable
colorscheme fairyfloss                       " Set syntax theme
let g:airline_theme='fairyfloss'             " Set statusline theme
let g:airline#extensions#tabline#enabled = 1 " Tabline
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline_skip_empty_sections = 1

let airline#extensions#coc#error_symbol = 'Error:'
let airline#extensions#coc#warning_symbol = 'Warning:'
let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'
let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'

" " Initialize airline symbols dictionary.
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" Fill airline symbols dictionary.
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '¶'

" Line numbering settings
set number
set relativenumber
set ruler
set nowrap

" Mark the 80 char column
set cursorline cursorcolumn
set colorcolumn=81

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Always show the status line
set laststatus=2

" Try to keep 2 lines above/below the current line in view for context.
set scrolloff=2

" Show matching bracket when the cursor has selected a bracket
set showmatch

" Flag problematic whitespace (trailing spaces, spaces before tabs).
highlight BadWhitespace term=standout ctermbg=red guibg=red
match BadWhitespace /[^* \t]\zs\s\+$\| \+\ze\t/
