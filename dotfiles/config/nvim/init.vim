" ----- Plugin Manager Setup -----
source $HOME/.config/nvim/init.d/plug-install.vim
source $HOME/.config/nvim/init.d/plug.vim

" ----- Load neovim config modules -----

" Display settings (theme, line numbering, etc.)
source $HOME/.config/nvim/init.d/display.vim
" Language support settings (IDE bullshit goes here)
source $HOME/.config/nvim/init.d/syntax.vim
" Miscellaneous configuration settings
source $HOME/.config/nvim/init.d/misc.vim
" Fuzzy finder settings
source $HOME/.config/nvim/init.d/fzf.vim
" Custom shortcuts
source $HOME/.config/nvim/init.d/keymapping.vim
" Folding shortcuts (alt+n to fold at level n)
source $HOME/.config/nvim/init.d/folding.vim
" Leader key bindings
source $HOME/.config/nvim/init.d/leader.vim
" Better o/O Behavior
source $HOME/.config/nvim/init.d/better_o.vim
" Autosave
source $HOME/.config/nvim/init.d/autosave.vim
" Empty guicursor
source $HOME/.config/nvim/init.d/empty-guicursor.vim
