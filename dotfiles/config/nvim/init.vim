" --- Dein Package Manager Configuration

" Be iMproved
if &compatible
  set nocompatible
endif

" Required:
set runtimepath+=/home/kmartin/.config/nvim/dein/repos/github.com/Shougo/dein.vim

" If Dein exists, initialize packages.
if dein#load_state('/home/kmartin/.config/nvim/dein')
  call dein#begin('/home/kmartin/.config/nvim/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/kmartin/.config/nvim/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')

  " --- Add plug-ins.

  " NERDTree (lazy load on command executed)
  call dein#add('scrooloose/nerdtree',
      \{'on_cmd': 'NERDTreeToggle'})

  " Deoplete.nvim (lazy load on insert mode)
  call dein#add('Shougo/deoplete.nvim')

  " Denite fuzzy-finding features.
  call dein#add('Shougo/denite.nvim')

  " Enable TypeScript syntax higlighting.
  call dein#add('HerringtonDarkholme/yats.vim')

  " End Dein initialization and save state.
  call dein#end()
  call dein#save_state()
endif

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif


" Open NERDTree with `Ctrl+n`
map <C-n> :NERDTreeToggle<CR>

" --- Remappings ---

" Use jj to escape in insert mode.
inoremap jj <Esc>

" Use jj to escape in insert mode.
inoremap lkj <Esc>


" --- Line numbering settings ---
set number           " Show line number.
set relativenumber   " Use relative line numbers.
set ruler
set nowrap

" <F2> toggles the whitelist characters.
noremap <F2> :set list!


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

