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

" Open NERDTree, pointing to the current file, with `Ctrl+n`.
nnoremap <silent> <expr> <C-n> g:NERDTree.IsOpen()
  \ ? "\:NERDTreeClose<CR>"
  \ : bufexists(expand('%'))
    \ ? "\:NERDTreeFind<CR>"
    \: "\:NERDTree<CR>"

" Remap `Ctrl+p` to the 'Gfp' command defined in `fzf.vim`
nnoremap <C-p> :Gfp<CR>

" Get hover information with `gh`
nmap gh <Plug>(ale_hover)

" Switch buffers with PageUp and PageDown.
nnoremap <pageup> :bprev<cr>
nnoremap <pagedown> :bnext<cr>

" Resize buffers with `+[hjkl]
nnoremap `h :vertical resize +5<CR>
nnoremap `j :resize +5<CR>
nnoremap `k :resize -5<CR>
nnoremap `l :vertical resize -5<CR>

" <F1> toggles relative line numbering
function! NumberToggle()
  if(&relativenumber == 1)
    set number
    set norelativenumber
  else
    set relativenumber
  endif
endfunc
nnoremap <F1> :call NumberToggle()<cr>

" <F2> toggles the whitelist characters
noremap <F2> :set list!<CR>

" <F4> toggles the tagbar window.
nmap <F4> :TagbarToggle<CR>

" <F7> jumps to the next error, and <F8> jumps to the next error
nmap <silent> <F7> <Plug>(ale_previous_wrap)
nmap <silent> <F8> <Plug>(ale_next_wrap)

" <F10> finds references, and <F11> jumps to the definition of a symbol in a
" vertical split, and <F12> jumps to the definition of a symbol in the current
" pane.
nmap <silent> <F10> <Plug>(ale_find_references)
nmap <silent> <F11> <Plug>(ale_go_to_definition_in_vsplit)
nmap <silent> <F12> <Plug>(ale_go_to_definition)
