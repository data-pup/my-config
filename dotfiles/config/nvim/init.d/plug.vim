call plug#begin('~/.local/share/nvim/plugged')

" Airline - statusline plugin.
Plug 'vim-airline/vim-airline'
" NOTE: For now, using a handrolled variation of the fairyfloss theme.
" This will be removed at some point, keeping it here for now.
" Plug 'vim-airline/vim-airline-themes'

" ALE - Asynchronous Linting Engine
Plug 'w0rp/ale'

" Anyfold - Generic folding
Plug 'pseewald/vim-anyfold'

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

" TypeScript support.
Plug 'leafgarland/typescript-vim'

" Which Key - show keybindings in popup.
Plug 'liuchengxu/vim-which-key'

call plug#end()
