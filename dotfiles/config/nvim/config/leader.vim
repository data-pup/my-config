" Which Key: vim-which-key shows keybindings for the leader key
" -------------------------------------------------------------

" Use space as a leader key
let mapleader=" "

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
" Use double space for command
nnoremap <Leader><space> :
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

" ALE shortcuts.
let g:which_key_map[';'] = {
      \ 'name' : 'IDE nonsense' ,
      \ ';' : ['<Plug>(ale_next_wrap)', 'next error'],
      \ '[' : [':lopen', 'open location list'],
      \ ']' : [':lclose', 'close location list'],
      \ 'j' : ['<Plug>(ale_next_wrap)', 'next error'],
      \ 'k' : ['<Plug>(ale_previous_wrap)', 'previous error'],
      \ 'r' : [':ALERename', 'rename symbol'],
      \ 'g' : {
        \ 'name' : 'go to',
        \ 'd' : ['<Plug>(ale_go_to_definition)', 'definition'],
        \ 't' : ['<Plug>(ale_go_to_definition_in_tab)', 'definition in tab'],
        \ 'v' : ['<Plug>(ale_go_to_definition_in_vsplit)', 'definition in vertical split'],
        \ },
      \ 'f' : {
        \ 'name' : 'find',
        \ 'r' : ['<Plug>(ale_find_references)', 'references'],
        \ }
      \ }

" Register ranger mappings. Because these involve strings of commands,
" we register the names of the mappings separately from the mappings
" themselves.
let g:which_key_map.r = {
      \ 'name' : 'ranger' ,
      \ 'r' : 'open ranger',
      \ 's' : 'open ranger in horizontal split',
      \ 't' : 'open ranger in tab',
      \ 'v' : 'open ranger in vertical split',
      \ }
map <leader>rr :Ranger<CR>.
map <leader>rt :RangerNewTab<CR>.
map <leader>rs :sp<CR>:Ranger<CR>.
map <leader>rv :vs<CR>:Ranger<CR>.

" TODO:
" ----------------------------------------------------------------------

" Force reload file with Leader+e
noremap <Leader>ee :e!<CR>

" visual search with vim-over with Leader+fr
nnoremap <Leader>fr :call VisualFindAndReplace()<CR>
xnoremap <Leader>fr :call VisualFindAndReplaceWithSelection()<CR>

" Use Leader+// to toggle highlight.
" Use Leader+/w to highlight the current word.
map <leader>// :set hlsearch! hlsearch?<CR>
map <leader>/w :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>

" Toggle *commenting with Leader+c
nmap <Leader>c <plug>NERDCommenterToggle
