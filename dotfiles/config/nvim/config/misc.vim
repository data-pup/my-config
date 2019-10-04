" Misc. Settings
" -----------------------------------------------------------------------------

" Autosave settings --- NOTE: This might be moved into a new file,
" at some point. Trying it out for now.

" Automatically save when the window loses focus or when a buffer is
" hidden.
set autoread
set hidden

" Don't keep swap files.
set noswapfile
set nobackup
set writebackup


" Reduce time to, e.g., CursorHold event
set updatetime=300

let g:auto_save = 1
let g:auto_save_silent = 1
let g:auto_save_write_all_buffers = 1

" Triger `autoread` when files changes on disk
" https://unix.stackexchange.com/questions/149209/refresh-changed-content-of-file-opened-in-vim/383044#383044
" https://vi.stackexchange.com/questions/13692/prevent-focusgained-autocmd-running-in-command-line-editing-mode
autocmd FocusGained,BufEnter * if mode() != 'c' | checktime | endif
" Notification after file change
" https://vi.stackexchange.com/questions/13091/autocmd-event-for-autoread
autocmd FileChangedShellPost *
  \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None

" End autosave settings ---

" search settings
:set incsearch
:set hlsearch

" vim-over helpers
function! VisualFindAndReplace()
  :OverCommandLine%s/
endfunction
function! VisualFindAndReplaceWithSelection() range
  :'<,'>OverCommandLine s/
endfunction

" visual search
nnoremap <Leader>fr :call VisualFindAndReplace()<CR>
xnoremap <Leader>fr :call VisualFindAndReplaceWithSelection()<CR>

" Indent Settings
set autoindent
set smartindent

" Tab Settings
set expandtab
set smarttab
set softtabstop=2
set shiftwidth=2

" Show whitespace in files.
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣

" Tagbar settings:
let g:tagbar_autoclose = 1        " Close the tag bar after selecting a tag.
let g:tagbar_show_visibility = 1  " Show (public/protected/private)
let g:tagbar_show_linenumbers = 1 " Show line numbers.

" NERDCommenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Ranger
let g:ranger_map_keys = 0 " Do not use default keymapping.

" Open a directory with ranger.
let g:NERDTreeHijackNetrw = 0
let g:ranger_replace_netrw = 1

" Show hidden files by default.
let g:ranger_command_override = 'ranger --cmd "set show_hidden=true"'
