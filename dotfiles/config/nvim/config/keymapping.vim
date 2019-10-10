" Remappings
" -----------------------------------------------------------------------------

" Use space as a leader key
let mapleader=" "

" Use double space for command
noremap <Leader><space> :

" Disable ex mode
nnoremap Q <nop>

" ESC shortcuts for insert mode
inoremap jj <Esc>
inoremap lkj <Esc>

" Save file with 'zxc' or 'Ctrl+s'
noremap zxc :w<CR>
noremap <C-s> :w<CR>

" Save file with Leader+ww, save all files with Leader+wa, or save
" and close buffer with Leader+wq
noremap <Leader>ww :w<CR>
noremap <Leader>wa :wa<CR>
noremap <Leader>wq :wq<CR>

" Close file with Leader+qq, or close all buffers with Leader+qa
noremap <Leader>qq :q<CR>
noremap <Leader>qa :qa<CR>

" Force reload file with Leader+e
noremap <Leader>ee :e!<CR>

" Open current buffer in a new tab with Leader+bt
" Split current buffer with Leader+bs
" Vertically split current buffer with Leader+bv
" List buffers with Leader+bl
noremap <Leader>bt :tab sb<CR>
noremap <Leader>bs :sp<CR>
noremap <Leader>bv :vs<CR>
noremap <Leader>bl :ls<CR>

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

" Easier split pane navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Open NERDTree with `Ctrl+n`
nnoremap <C-n> :NERDTreeToggle<CR>

" Toggle *commenting with Leader+c
nmap <Leader>c <plug>NERDCommenterToggle

" Remap `Ctrl+p` to the 'Gfp' command defined in `fzf.vim`
nnoremap <C-p> :Gfp<CR>

" Get hover information with `gh`
nmap gh <Plug>(ale_hover)

" Switch buffers with PageUp and PageDown, or Leader-j and Leader,k
nnoremap <pageup> :bprev<cr>
nnoremap <Leader>k :bprev<cr>
nnoremap <pagedown> :bnext<cr>
nnoremap <Leader>j :bnext<cr>

" Switch tabs with Leader-h, and Leader-l
nnoremap <Leader>h :tabprev<CR>
nnoremap <Leader>l :tabnext<CR>

" Resize buffers with `+[hjkl]
nnoremap `h :vertical resize +5<CR>
nnoremap `j :resize +5<CR>
nnoremap `k :resize -5<CR>
nnoremap `l :vertical resize -5<CR>

" Ranger keybindings Leader-rr for current window, Leader-rt for new tab.
" Leader+rss and Leader+rvs for opening in a split, and for opening in a
" vertical split, respectively.
map <leader>rr :Ranger<CR>.
map <leader>rt :RangerNewTab<CR>.
map <leader>rss :sp<CR>:Ranger<CR>.
map <leader>rvs :vs<CR>:Ranger<CR>.

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

" Leader-;rn to rename a symbol
map <leader>;rn :ALERename<CR>

" <F7> jumps to the next error, and <F8> jumps to the next error
nmap <silent> <F7> <Plug>(ale_previous_wrap)
nmap <silent> <F8> <Plug>(ale_next_wrap)

" <F10> finds references, and <F11> jumps to the definition of a symbol in a
" vertical split, and <F12> jumps to the definition of a symbol in the current
" pane.
nmap <silent> <F10> <Plug>(ale_find_references)
nmap <silent> <F11> <Plug>(ale_go_to_definition_in_vsplit)
nmap <silent> <F12> <Plug>(ale_go_to_definition)
