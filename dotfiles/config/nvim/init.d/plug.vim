call plug#begin('~/.local/share/nvim/plugged')

" Airline - statusline plugin.
Plug 'vim-airline/vim-airline'
" NOTE: For now, using a handrolled variation of the fairyfloss theme.
" This will be removed at some point, keeping it here for now.
" Plug 'vim-airline/vim-airline-themes'

" Anyfold - Generic folding
Plug 'pseewald/vim-anyfold'

" Use release branch (Recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Deoplete - asynchronous completion.
Plug 'Shougo/deoplete.nvim'

" Fugitive/Rhubarb - git wrapper, plus GitHub extensions.
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

" fzf - fuzzy finder.
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" NERDCommenter - quickly comment lines
Plug 'scrooloose/nerdcommenter'

" NERDTree - file explorer.
Plug 'scrooloose/nerdtree'

" over.vim - substitution preview.
Plug 'osyo-manga/vim-over'

" ranger.vim - ranger/nvim integration.
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'

" Signify - VSC changes.
Plug 'mhinz/vim-signify'

" Surround - Surrounding pair commands.
Plug 'tpope/vim-surround'

" Tagbar - class outline viewer.
Plug 'majutsushi/tagbar'

" TOML support.
Plug 'cespare/vim-toml'

" TypeScript support.
Plug 'leafgarland/typescript-vim'

" Which Key - show keybindings in popup.
Plug 'liuchengxu/vim-which-key'

" Goyo/Limelight - zen display mode
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

call plug#end()
