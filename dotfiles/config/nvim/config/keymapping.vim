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
nnoremap k      gk
vnoremap k      gk
nnoremap <Down> gj
vnoremap <Down> gj
nnoremap j      gj
vnoremap j      gj

" <F2> toggles the whitelist characters
noremap <F2> :set list!<CR>

" <F4> toggles the tagbar window.
nmap <F4> :TagbarToggle<CR>

" <F7> jumps to the next error, and <F8> jumps to the next error
nmap <silent> <F7> <Plug>(ale_previous_wrap)
nmap <silent> <F8> <Plug>(ale_next_wrap)

" <F10> finds references, and <F12> jumps to the definition of a symbol.
nmap <silent> <F10> <Plug>(ale_find_references)
nmap <silent> <F12> <Plug>(ale_go_to_definition)

" Open NERDTree with `Ctrl+n`
map <C-n> :NERDTreeToggle<CR>

" Get hover information with `gh`
nmap gh :ALEHover<CR>

" Switch buffers with PageUp and PageDown
nnoremap <PageUp> :bprev<CR>
nnoremap <PageDown> :bnext<CR>
