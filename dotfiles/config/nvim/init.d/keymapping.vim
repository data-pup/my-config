" Remappings
" -----------------------------------------------------------------------------

" Disable ex mode
nnoremap Q <nop>

" ESC shortcuts for insert mode
inoremap jj <Esc>
inoremap lkj <Esc>

" Save file with 'zxc' or 'Ctrl+s'
noremap zxc :w<CR>
noremap <C-s> :w<CR>

" Move by visual lines
nnoremap <Up>   gk
vnoremap <Up>   gk
nnoremap k      gk
vnoremap k      gk
nnoremap <Down> gj
vnoremap <Down> gj
nnoremap j      gj
vnoremap j      gj

" Easier split pane navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" GoTo code navigation.
" TODO: `gp` should goto parent via coc command.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Open NERDTree, pointing to the current file, with `Ctrl+n`.
nnoremap <silent> <expr> <C-n> g:NERDTree.IsOpen()
  \ ? "\:NERDTreeClose<CR>"
  \ : bufexists(expand('%'))
    \ ? "\:NERDTreeFind<CR>"
    \: "\:NERDTree<CR>"

" Remap `Ctrl+p` to the 'Gfp' command defined in `fzf.vim`
nnoremap <C-p> :Gfp<CR>

" Get hover information with `gh`, and documentation with `gH`
nmap gh <Plug>(ale_hover)
nmap gH :call show_documentation()<CR>

" Switch buffers with PageUp and PageDown.
nnoremap <pageup> :bprev<cr>
nnoremap <pagedown> :bnext<cr>

" Resize buffers with `+[hjkl]
nnoremap `h :vertical resize +5<CR>
nnoremap `j :resize +5<CR>
nnoremap `k :resize -5<CR>
nnoremap `l :vertical resize -5<CR>

" Function Keys:
"
" <F1> opens dialogue to search by file name
" <F2> opens dialogue to search by file contents
" <F3> opens dialogue to search by file symbols
" <F4> toggles the tagbar window.
"
" <F5> opens dialogue to search by compiler diagnostics
" <F6> LEFT UNMAPPED
" <F7> jumps to the previous error
" <F8> jumps to the next error
"
" <F9> jump to the type definition of a symbol.
" <F10> finds implementation blocks for symbol type.
" <F11> LEFT UNMAPPED (conflicts with fullscreen mapping in i3)
" <F12> jumps to the definition of a symbol
nmap <silent> <F1>  :Gfp
nmap <silent> <F2>  :Rg!
nmap <silent> <F3>  :Symbols
nmap <silent> <F4>  :TagbarToggle<CR>

nmap <silent> <F5>  :Diagnostics
" --- F6 LEFT UNMAPPED
nmap <silent> <F7>  <Plug>(coc-diagnostic-prev)
nmap <silent> <F8>  <Plug>(coc-diagnostic-next)

nmap <silent> <F9>  <Plug>(coc-type-definition)
nmap <silent> <F10> <Plug>(coc-implementation)
" --- F11 LEFT UNMAPPED
nmap <silent> <F12> <Plug>(coc-definition)
