" Allow User's .vimrc and other extensions
set nocompatible

" show partial command in status line
set showcmd

" Syntax Coloring
syntax on
colorscheme kevi
filetype on                     " to consider filetypes ...
filetype plugin on              " ... and in plugins
set directory=~/.vim/swp        " store the .swp files in a specific path

" Search settings: highlight, as the user types
set hlsearch
set incsearch

" Search highlighting color
hi Search guibg=LightBlue

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

" Pressing F4 will highlight all occurrences of the current word:
" (This works by placing the current word in the search buffer '@/' and
" then making a call to set hls, turning on hlsearch.)
:nnoremap <F4> :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>

" Press F8 to toggle highlighting on/off, and show current value.
noremap <F8> :set hlsearch! hlsearch?<CR>

" Show whitespace in files.
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣

" Toggle the whitelist characters using <F5>
noremap <F5> :set list!

" Syntactic settings
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Syntastic error symbols
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"

" Remove any trailing whitespace that is in the file
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

" Highlight other working note words
if has("autocmd")
    " Highlight TODO, FIXME, NOTE, etc.
    if v:version > 701
        autocmd Syntax * call matchadd('Todo', '\W\zs\(TODO\|DEBUG\|CHANGED\|XXX\|DEV\)')
        autocmd Syntax * call matchadd('Debug', '\W\zs\(NOTES\|NOTE\|INFO\|INPUT\|OUTPUT\)')
    endif
endif

" Line Numbers
set number
set relativenumber
set ruler
set nowrap

" Mark the 80 char column
set colorcolumn=80
highlight colorcolumn ctermbg=55

" Indent Settings
set autoindent
set smartindent

" Tab Settings
set expandtab
set smarttab
set softtabstop=2
set shiftwidth=2

" Set backspace to detect indents etc.
set backspace=indent,eol,start

" Show matching bracket
set showmatch

" Try to keep 2 lines above/below the current line in view for context.
set scrolloff=5

" Tab completion
set wildmenu
set wildmode=list:longest,full

" Enable mouse support in console
set mouse=a

" Confirm saving and quitting.
set confirm

"  jj to escape in insert mode
inoremap jj <Esc>

"  jj to escape in insert mode
inoremap lkj <Esc>

" Show info on statusline
set laststatus=2
:set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

" Flag problematic whitespace (trailing spaces, spaces before tabs).
highlight BadWhitespace term=standout ctermbg=red guibg=red
match BadWhitespace /[^* \t]\zs\s\+$\| \+\ze\t/

" Autocomplete matching brackets, quotes, etc.
ino " ""<left>
ino ' ''<left>
ino ( ()<left>
ino [ []<left>
ino { {}<left>
ino {<CR> {<CR>}<ESC>O

" Move by visual lines
nnoremap <Up>   gk
vnoremap <Up>   gk
nnoremap <Down> gj
vnoremap <Down> gj

" Insert new line in command mode
map <S-Enter> O<ESC> " Insert above current line"
map <Enter> o<ESC>   " Insert below current line"

" Case sensitivity for searching
set smartcase

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
map N Nzz
map n nzz

" Stick this in your vimrc to open NERDTree with `Ctrl+n`
map <C-n> :NERDTreeToggle<CR>
