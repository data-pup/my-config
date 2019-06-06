" Remappings 
" -----------------------------------------------------------------------------

" ESC shortcuts for insert mode
inoremap jj <Esc>
inoremap lkj <Esc>

" Move by visual lines
nnoremap <Up>   gk
vnoremap <Up>   gk
nnoremap <Down> gj
vnoremap <Down> gj

" <F2> toggles the whitelist characters
noremap <F2> :set list!

" Open NERDTree with `Ctrl+n`
map <C-n> :NERDTreeToggle<CR>

