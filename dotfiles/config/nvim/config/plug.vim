call plug#begin('~/.local/share/nvim/plugged')

" Airline - statusline plugin.
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" ALE - Asynchronous Linting Engine
Plug 'w0rp/ale'

" Anyfold - Generic folding
Plug 'pseewald/vim-anyfold'

" CtrlP - fuzzy path/buffer finding.
Plug 'ctrlpvim/ctrlp.vim'

" Deoplete - asynchronous completion.
Plug 'Shougo/deoplete.nvim'

" Fugitive - git wrapper.
Plug 'tpope/vim-fugitive'

" fzf - fuzzy finder.
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" NERDTree - file explorer.
Plug 'scrooloose/nerdtree'

" Signify - VSC changes.
Plug 'mhinz/vim-signify'

" Tagbar - class outline viewer.
Plug 'majutsushi/tagbar'

" TypeScript support.
Plug 'leafgarland/typescript-vim'

call plug#end()
