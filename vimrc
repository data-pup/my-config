" Initialize Pathogen Package Manager:
" -----------------------------------
execute pathogen#infect()



" Custom Key Mappings:
" ----------------------

" Pressing F4 will highlight all occurrences of the current word:
" (This works by placing the current word in the search buffer '@/' and
" then making a call to set hls, turning on hlsearch.)
:nnoremap <F4> :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>

" <F5> toggles the whitelist characters.
noremap <F5> :set list!

" Press F8 to toggle highlighting on/off, and show current value.
noremap <F8> :set hlsearch! hlsearch?<CR>

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

"  jj to escape in insert mode
inoremap jj <Esc>

"  jj to escape in insert mode
inoremap lkj <Esc>

" Insert new line in command mode
map <S-Enter> O<ESC> " Insert above current line"
map <Enter> o<ESC>   " Insert below current line"



" General Configuration Settings:
" -------------------------------

" Compatibility settings.
set nocompatible     " Allow user's .vimrc and other extensions.
set showcmd          " Show partial command in the status line.
set smartcase        " Case sensitivity for searching.

" Syntax coloring settings.
syntax on                       " Enable syntax highlighting.
filetype on                     " Consider filetypes when highlighting.
filetype plugin on              " Enable syntax highlighting in plugins.

" Line numbering settings.
set number           " Show line number.
set relativenumber   " Use relative line numbers.
set ruler
set nowrap

" Mark the 80 char column
set colorcolumn=80
highlight colorcolumn ctermbg=55

" Confirm saving and quitting.
set confirm

" Show info on the statusline.
set laststatus=2
:set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

" Store the .swp files in a specific path.
set directory=~/.vim/swp



" Whitespace And Indentation Configuration Settings:
" ----------------------------------

" Show whitespace in files.
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣

" Remove any trailing whitespace that is in the file when saving.
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

" Flag problematic whitespace (trailing spaces, spaces before tabs).
highlight BadWhitespace term=standout ctermbg=red guibg=red
match BadWhitespace /[^* \t]\zs\s\+$\| \+\ze\t/

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



" Search Settings:
" ----------------

" Search settings: highlight, as the user types
set hlsearch                 " Highlight search matches.
set incsearch                " Highlight matches incrementally while typing.
hi Search guibg=LightBlue    " Search highlighting color

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
map N Nzz
map n nzz

" Show matching bracket when the cursor has selected a bracket.
set showmatch



" Movement Configuration Settings:
" --------------------------------

" Enable mouse support in console
set mouse=a

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

" Try to keep 2 lines above/below the current line in view for context.
set scrolloff=5



" Miscellaneous Configuration Settings:
" -------------------------------------

" Highlight other working note words
if has("autocmd")
    " Highlight TODO, FIXME, NOTE, etc.
    if v:version > 701
        autocmd Syntax * call matchadd('Todo', '\W\zs\(TODO\|DEBUG\|CHANGED\|XXX\|DEV\)')
        autocmd Syntax * call matchadd('Debug', '\W\zs\(NOTES\|NOTE\|INFO\|INPUT\|OUTPUT\)')
    endif
endif

" Tab completion
set wildmenu
set wildmode=list:longest,full



" Plugin Configuration Settings:
" ------------------------------

" Stick this in your vimrc to open NERDTree with `Ctrl+n`
map <C-n> :NERDTreeToggle<CR>

" Syntactic settings
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Syntastic error symbols
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"

