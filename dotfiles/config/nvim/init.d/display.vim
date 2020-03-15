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

set colorcolumn=81 " Mark the 80th column by default.
set signcolumn=yes " Always show the signcolumn (errors, warnings, git changes)
set laststatus=2   " Always show the status line.
set scrolloff=2    " Keep 2 lines above/below the current line in view.
set showmatch      " Highlight matching bracket.
set number relativenumber " Show line numbers, with relative numbering.

" Misc.
set ruler
set nowrap

" Highlight the cursor's line and column, only in the current pane.
set cursorline cursorcolumn
augroup CursorLine
    au!
    au VimEnter,WinEnter,BufWinEnter * setlocal cursorline cursorcolumn
    au WinLeave * setlocal nocursorline nocursorcolumn
augroup END

" Flag problematic whitespace (trailing spaces, spaces before tabs).
highlight BadWhitespace term=standout ctermbg=red guibg=red
match BadWhitespace /[^* \t]\zs\s\+$\| \+\ze\t/
