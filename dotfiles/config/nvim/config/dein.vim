" Dein Package Manager Configuration
" -----------------------------------------------------------------------------

" Add Dein to the runtime path.
set runtimepath+=/home/katie/.cache/dein/repos/github.com/Shougo/dein.vim

" Initialize Dein packages (only if Dein exists).
if dein#load_state('/home/katie/.cache/dein')
  call dein#begin('/home/katie/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/katie/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Example: add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')

  " --- Add plug-ins.

  " Airline - statusline plugin.
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')

  " ALE - Asynchronous Linting Engine
  call dein#add('w0rp/ale')

  " Anyfold - Generic folding
  call dein#add('pseewald/vim-anyfold')

  " Denite - fuzzy-finding features.
  call dein#add('Shougo/denite.nvim')

  " Deoplete - asynchronous completion.
  call dein#add('Shougo/deoplete.nvim')

  " Fugitive - git wrapper.
  call dein#add('tpope/vim-fugitive')

  " NERDTree - file explorer.
  call dein#add('scrooloose/nerdtree',
      \{'on_cmd': 'NERDTreeToggle'})

  " Signify - VSC changes.
  call dein#add('mhinz/vim-signify')

  " Tagbar - class outline viewer.
  call dein#add('majutsushi/tagbar')

  " End Dein initialization and save state.
  call dein#end()
  call dein#save_state()
endif

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

