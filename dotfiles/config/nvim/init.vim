" --- Be iMproved
if &compatible
  set nocompatible
endif

" --- Load neovim config modules.
source $HOME/.config/nvim/config/dein.vim
source $HOME/.config/nvim/config/keymapping.vim

" Open NERDTree with `Ctrl+n`
map <C-n> :NERDTreeToggle<CR>


" --- Line numbering settings ---
set number           " Show line number.
set relativenumber   " Use relative line numbers.
set ruler
set nowrap


" --- Syntastic display settings ---
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" --- Display Settings ---

" Use TrueColor.
if (has("termguicolors"))
 set termguicolors
endif

" Set theme to fairyfloss.
syntax enable
colorscheme fairyfloss
filetype plugin indent on

" Show info on the statusline.
set statusline=%t%m\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]

" Add Syntastic information to the status line.
set statusline+=\ %=%{SyntasticStatuslineFlag()}

" Always show the status line.
set laststatus=2

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

