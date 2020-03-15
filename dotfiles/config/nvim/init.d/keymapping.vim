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

" Get hover information with `gh`
nmap gh :call show_documentation()<CR>

" Switch buffers with PageUp and PageDown.
nnoremap <pageup> :bprev<cr>
nnoremap <pagedown> :bnext<cr>

" Resize buffers with `+[hjkl]
nnoremap `h :vertical resize +5<CR>
nnoremap `j :resize +5<CR>
nnoremap `k :resize -5<CR>
nnoremap `l :vertical resize -5<CR>

function! NumberToggle()
  if(&relativenumber == 1)
    set number
    set norelativenumber
  else
    set relativenumber
  endif
endfunc

" <F1> toggles relative line numbering
" <F2> toggles the whitelist characters
" <F4> toggles the tagbar window.
"
" <F5> navigate error diagnostics
" <F7> jumps to the previous error
" <F8> jumps to the next error
"
" <F9> finds references
" <F10> jump to the type definition of a symbol
" <F11> jumps to the implementation of a type
" <F12> jumps to the definition of a symbol
nmap <silent> <F1>  :call NumberToggle()<cr>
nmap <silent> <F2>  :set list!<CR>
nmap <silent> <F4>  :TagbarToggle<CR>

nmap <silent> <F5>  :CocList --auto-preview --tab --top diagnostics
nmap <silent> <F7>  <Plug>(coc-diagnostic-prev)
nmap <silent> <F8>  <Plug>(coc-diagnostic-next)

nmap <silent> <F9>  <Plug>(coc-references)
nmap <silent> <F10> <Plug>(coc-type-definition)
nmap <silent> <F11> <Plug>(coc-implementation)
nmap <silent> <F12> <Plug>(coc-definition)
