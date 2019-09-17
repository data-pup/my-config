" Remappings
" -----------------------------------------------------------------------------

" map space to :
noremap <space> :
" disable :
noremap : <NOP>

" Use comma as a leader key
let mapleader=","

" Disable ex mode
nnoremap Q <nop>

" ESC shortcuts for insert mode
inoremap jj <Esc>
inoremap lkj <Esc>

" Save file with 'zxc' or 'Ctrl+s'
noremap zxc :w<CR>
noremap <C-s> :w<CR>

" visual search with vim-over with Leader+fr
nnoremap <Leader>fr :call VisualFindAndReplace()<CR>
xnoremap <Leader>fr :call VisualFindAndReplaceWithSelection()<CR>

" Move by visual lines
nnoremap <Up>   gk
vnoremap <Up>   gk
nnoremap k      gk
vnoremap k      gk
nnoremap <Down> gj
vnoremap <Down> gj
nnoremap j      gj
vnoremap j      gj

" Open NERDTree with `Ctrl+n`
map <C-n> :NERDTreeToggle<CR>

" Remap `Ctrl+p` to the 'Gfp' command defined in `fzf.vim`
nnoremap <C-p> :Gfp<CR>

" Get hover information with `gh`
nmap gh :ALEHover<CR>

" Switch buffers with PageUp and PageDown
nnoremap <PageUp> :bprev<CR>
nnoremap <PageDown> :bnext<CR>

" <F1> toggles relative line numbering
function! NumberToggle()
  if(&relativenumber == 1)
    set number
    set nornu
  else
    set rnu
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
