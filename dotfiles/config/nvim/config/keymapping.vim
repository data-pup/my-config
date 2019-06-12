" Remappings
" -----------------------------------------------------------------------------

" ESC shortcuts for insert mode
inoremap jj <Esc>
inoremap lkj <Esc>

" Save file with 'zxc'
noremap zxc :w<CR>

" Move by visual lines
nnoremap <Up>   gk
vnoremap <Up>   gk
nnoremap <Down> gj
vnoremap <Down> gj

" <F2> toggles the whitelist characters
noremap <F2> :set list!<CR>

" <F7> jumps to the next error, and <F8> jumps to the next error
nmap <silent> <F7> <Plug>(ale_previous_wrap)
nmap <silent> <F8> <Plug>(ale_next_wrap)

" Open NERDTree with `Ctrl+n`
map <C-n> :NERDTreeToggle<CR>

