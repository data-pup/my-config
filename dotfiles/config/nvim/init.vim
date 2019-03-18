" --- Plugin Configuration Settings:
" ------------------------------

" Initialize Pathogen package manager
execute pathogen#infect()

" Open NERDTree with `Ctrl+n`
map <C-n> :NERDTreeToggle<CR>


" --- Remappings ---

"  jj to escape in insert mode
inoremap jj <Esc>

"  jj to escape in insert mode
inoremap lkj <Esc>


" --- Line numbering settings ---
set number           " Show line number.
set relativenumber   " Use relative line numbers.
set ruler
set nowrap


" --- Display Settings ---

if (has("termguicolors"))
 set termguicolors
endif

" Theme
syntax enable
colorscheme fairyfloss

" Show info on the statusline.
set laststatus=2
:set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

" Mark the 80 char column
set colorcolumn=80
highlight colorcolumn ctermbg=55

" Show matching bracket when the cursor has selected a bracket
set showmatch

" Indent Settings
set autoindent
set smartindent

" Tab Settings
set expandtab
set smarttab
set softtabstop=2
set shiftwidth=2


" --- Movement Configuration Settings:

" Move by visual lines
nnoremap <Up>   gk
vnoremap <Up>   gk
nnoremap <Down> gj
vnoremap <Down> gj

