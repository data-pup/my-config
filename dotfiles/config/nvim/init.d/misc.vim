" Misc. Settings
" -----------------------------------------------------------------------------

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

" Whitespace settings
set shiftwidth=4
set softtabstop=4
set expandtab

" allow toggling between local and default mode
function TabToggle()
  if &expandtab
    set shiftwidth=8
    set softtabstop=0
    set noexpandtab
    echo "now using hard tabs..."
  else
    set shiftwidth=4
    set softtabstop=4
    set expandtab
    echo "now using soft tabs..."
  endif
endfunction

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
