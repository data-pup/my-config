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
