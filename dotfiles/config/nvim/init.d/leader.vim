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

" Open files using the fuzzy finding commands defined in `fzf.vim`.
let g:which_key_map.o = {
      \ 'name' : 'open file' ,
      \ 'o' : [':Gfp', 'search by name'],
      \ 'r' : [':Rg!', 'search by regex'],
      \ }

" Write buffer mappings.
let g:which_key_map.w = {
      \ 'name' : 'save buffers' ,
      \ 'a' : [':wa', 'save all open buffers'] ,
      \ 'w' : [':w', 'save current buffer'] ,
      \ 'q' : [':wq', 'save and quit buffer'] ,
      \ }

" Close buffer mappings.
let g:which_key_map.q = {
      \ 'name' : 'close buffers' ,
      \ 'a' : [':qa', 'close all buffers'],
      \ 'f' : [':q!', 'close current buffer w/o saving'],
      \ 'q' : [':q', 'close current buffer'],
      \ 'o' : [':%bd|e#|bd#', 'close all other buffers'],
      \ }

" General buffer management mappings.
let g:which_key_map.b = {
      \ 'name' : 'buffer management' ,
      \ 'l' : [':ls', 'list open buffers'],
      \ 's' : [':sp', 'horizontally split buffer'],
      \ 't' : [':tab sb', 'open buffer in new tab'],
      \ 'v' : [':vs', 'vertically split buffer'],
      \ }

" Tab management mappings.
let g:which_key_map.t = {
      \ 'name' : 'tab management' ,
      \ 'h' : [':tabmove 0', 'move tab to first position'],
      \ 'j' : [':tabmove -1', 'move tab left one position'],
      \ 'k' : [':tabmove +1', 'move tab right one position'],
      \ 'l' : [':tabmove', 'move tab to last position'],
      \ 't' : [':tabs', 'list open tabs'],
      \ 'q' : [':tabclose', 'close tab'],
      \ }

" Mark management mappings.
let g:which_key_map.m = {
      \ 'name' : 'mark management' ,
      \ 'a' : [':marks', 'list all marks'],
      \ 'l' : [':marks abcdefghijklmnopqrstuvwxyz', 'list local marks'],
      \ 'f' : [':marks ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'list file marks'],
      \ 'd' : {
        \ 'name' : 'delete marks',
        \ 'd' : [':delmarks!', 'delete all marks for current buffer'],
        \ 'l' : [':delmarks abcdefghijklmnopqrstuvwxyz', 'delete local marks'],
        \ 'f' : [':delmarks ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'delete file marks'],
        \ }
      \ }

" Display adjustment mappings.
let g:which_key_map.d = {
      \ 'name' : 'display settings' ,
      \ 'l' : [':call NumberToggle()', 'toggle relative line numbers'],
      \ 'n' : [':NERDTreeToggle', 'toggle NERDTree'],
      \ 'w' : [':set list!', 'toggle whitespace characters'],
      \ 'c' : {
        \ 'name' : 'ruler columns',
        \ '[' : [':set colorcolumn=74,81,101,121', 'show rulers'],
        \ ']' : [':set colorcolumn=', 'hide rulers'],
        \ }
      \ }

" Git bindings.
let g:which_key_map.g = {
      \ 'name' : 'git' ,
      \ 'b' : [':Gblame', 'git blame'],
      \ 'c' : [':Gcommit -v', 'git commit'],
      \ 's' : [':Gstatus', 'git status'],
      \ 'd' : {
        \ 'name' : 'diff',
        \ 'd' : [':Gvdiffsplit', 'git diff (vertical)'],
        \ 's' : [':Gdiffsplit', 'git diff (horizontal)'],
        \ },
      \ 'l' : {
        \ 'name' : 'git log',
        \ 'l' : [':Glog', 'commit history (all)'],
        \ 'f' : [':Glog! -- %', 'commit history (current file)'],
        \ }
      \ }

" Language support mappings via ALE.
let g:which_key_map[';'] = {
      \ 'name' : 'IDE nonsense' ,
      \ ';' : ['<Plug>(ale_next_wrap)', 'next error'],
      \ '[' : [':lopen', 'open location list'],
      \ ']' : [':lclose', 'close location list'],
      \ 'j' : ['<Plug>(ale_next_wrap)', 'next error'],
      \ 'k' : ['<Plug>(ale_previous_wrap)', 'previous error'],
      \ 'r' : [':ALERename', 'rename symbol'],
      \ 'd' : ['<Plug>(ale_detail)', 'error detail'],
      \ 'h' : ['<Plug>(ale_hover)', 'get hover information'],
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

" Ranger mappings.
" NOTE: Because these involve strings of commands, we register the names
" of the mappings separately from the mappings themselves.
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

" Highlight mappings.
" NOTE: Because these involve strings of commands, we register the names
" of the mappings separately from the mappings themselves.
let g:which_key_map['/'] = {
      \ 'name' : 'miscellaneous' ,
      \ '/' : 'toggle highlight',
      \ 'w' : 'highlight current word',
      \ 't' : ['TabToggle()', 'toggle tabs vs. spaces'],
      \ 'c' : {
        \ 'name': 'copy path to current buffer',
        \ 'n' : 'copy name of current buffer',
        \ 'l' : 'copy name of current buffer (with line number)',
        \ },
      \ }
map <leader>// :set hlsearch! hlsearch?<CR>
map <leader>/w :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>
map <leader>/cn :let @+ = expand("%")<CR>
nnoremap <leader>/cl :let @+=expand("%") . ':' . line(".")<CR>

" visual search with vim-over with Leader+fr
" NOTE: Because these involve strings of commands, we register the names
" of the mappings separately from the mappings themselves.
let g:which_key_map.f = {
      \ 'name' : 'visual find and replace' ,
      \ 'r' : 'visual find and replace',
      \ }
nnoremap <Leader>fr :call VisualFindAndReplace()<CR>
xnoremap <Leader>fr :call VisualFindAndReplaceWithSelection()<CR>

" TODO:
" ----------------------------------------------------------------------

" Force reload file with Leader+e
noremap <Leader>ee :e!<CR>
