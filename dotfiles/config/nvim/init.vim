" ----- Plugin Manager Setup -----
source $HOME/.config/nvim/config/plug-install.vim
source $HOME/.config/nvim/config/plug.vim

" ----- Load neovim config modules -----

" Display settings (theme, line numbering, etc.)
source $HOME/.config/nvim/config/display.vim
" Language support settings (IDE bullshit goes here)
source $HOME/.config/nvim/config/syntax.vim
" Miscellaneous configuration settings
source $HOME/.config/nvim/config/misc.vim
" Fuzzy finder settings
source $HOME/.config/nvim/config/fzf.vim
" Custom shortcuts
source $HOME/.config/nvim/config/keymapping.vim
" Folding shortcuts (alt+n to fold at level n)
source $HOME/.config/nvim/config/folding.vim
" Leader key bindings
source $HOME/.config/nvim/config/leader.vim
" Better o/O Behavior
source $HOME/.config/nvim/config/better_o.vim
" Autosave
source $HOME/.config/nvim/config/autosave.vim
