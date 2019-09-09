" Misc. Settings
" -----------------------------------------------------------------------------

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

" Try to keep 2 lines above/below the current line in view for context.
set scrolloff=5

" Tagbar settings:
let g:tagbar_autoclose = 1        " Close the tag bar after selecting a tag.
let g:tagbar_show_visibility = 1  " Show (public/protected/private)
let g:tagbar_show_linenumbers = 1 " Show line numbers.


" add Rg ripgrep command
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

" Gfp shortcut to show gitfiles with preview
command! -bang -nargs=* Gfp call fzf#vim#gitfiles('', fzf#vim#with_preview('right'))
