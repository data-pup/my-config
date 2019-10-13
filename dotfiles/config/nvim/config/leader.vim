" Which Key: vim-which-key shows keybindings for the leader key
" -------------------------------------------------------------

" Use space as a leader key
let mapleader=" "

" Use double space for command
noremap <Leader><space> :

" Register space as the leader key with which-key.
call which_key#register('<Space>', "g:which_key_map")
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

" Set timeout length (by default timeoutlen is 1000 ms)
set timeoutlen=500

" Hide the status line provided by which-key.
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler


" Which Key Bindings: Bind leader keys, registering with which-key.
" -----------------------------------------------------------------

" Define prefix dictionary
let g:which_key_map =  {}

" Open command prompt with Leader-Leader.
let g:which_key_map[' '] = 'open command prompt'

" Switch tabs with Leader-h, and Leader-l
nnoremap <Leader>h :tabprev<CR>
let g:which_key_map.h = 'previous tab'
nnoremap <Leader>l :tabnext<CR>
let g:which_key_map.l = 'next tab'

" Switch buffers with Leader-k, and Leader-j
nnoremap <Leader>k :bprev<cr>
let g:which_key_map.k = 'previous buffer'
nnoremap <Leader>j :bnext<cr>
let g:which_key_map.j = 'next buffer'

" Writing buffers.
let g:which_key_map.w = {
      \ 'name' : 'save buffers' ,
      \ 'w' : [':w', 'save current buffer'] ,
      \ 'a' : [':wa', 'save all open buffers'] ,
      \ 'q' : [':wq', 'save and quit buffer'] ,
      \ }

" Close file with Leader+qq, or close all buffers with Leader+qa
let g:which_key_map.q = {
      \ 'name' : 'close buffers' ,
      \ 'q' : [':q', 'close current buffer'],
      \ 'a' : [':qa', 'close all buffers'],
      \ 'f' : [':q!', 'close current buffer w/o saving'],
      \ }

" Open current buffer in a new tab with Leader+bt
" Split current buffer with Leader+bs
" Vertically split current buffer with Leader+bv
" List buffers with Leader+bl
let g:which_key_map.b = {
      \ 'name' : 'buffer management' ,
      \ 't' : [':tab sb', 'open buffer in new tab'],
      \ 's' : [':sp', 'horizontally split buffer'],
      \ 'v' : [':vs', 'vertically split buffer'],
      \ 'l' : [':ls', 'list open buffers'],
      \ }

" TODO:
" ----------------------------------------------------------------------

" Force reload file with Leader+e
noremap <Leader>ee :e!<CR>

" visual search with vim-over with Leader+fr
nnoremap <Leader>fr :call VisualFindAndReplace()<CR>
xnoremap <Leader>fr :call VisualFindAndReplaceWithSelection()<CR>

" Ranger keybindings Leader-rr for current window, Leader-rt for new tab.
" Leader+rss and Leader+rvs for opening in a split, and for opening in a
" vertical split, respectively.
map <leader>rr :Ranger<CR>.
map <leader>rt :RangerNewTab<CR>.
map <leader>rss :sp<CR>:Ranger<CR>.
map <leader>rvs :vs<CR>:Ranger<CR>.

" Use Leader+// to toggle highlight.
" Use Leader+/w to highlight the current word.
map <leader>// :set hlsearch! hlsearch?<CR>
map <leader>/w :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>

" ALE shortcuts.
map <leader>;; <Plug>(ale_next_wrap)
map <leader>;rn :ALERename<CR>
map <leader>;fr <Plug>(ale_find_references)
map <leader>;gdt <Plug>(ale_go_to_definition_in_tab)
map <leader>;gdv <Plug>(ale_go_to_definition_in_vsplit)
map <leader>;gdd <Plug>(ale_go_to_definition)
map <leader>;j <Plug>(ale_next_wrap)
map <leader>;k <Plug>(ale_previous_wrap)

" Open and close loclist.
map <leader>;] :lclose<CR>
map <leader>;[ :lopen<CR>

" Toggle *commenting with Leader+c
nmap <Leader>c <plug>NERDCommenterToggle
