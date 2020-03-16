" Add `:Format` command to format current buffer with COC.
command! -nargs=0 Format :call CocAction('format')

" Show documentation in preview window.
" Add `:Outline` command to navigate project via structural outline.
command! -nargs=0 Outline :CocList --auto-preview --tab outline

" Add `:Symbols` command to navigate project via symbols.
command! -nargs=0 Symbols :CocList --auto-preview --interactive --tab symbols

" Add `:Diagnostics` command to navigate project via compiler diagnostics
command! -nargs=0 Diagnostics :CocList --auto-preview --tab diagnostics

" Toggle relative line numbering.
function! NumberToggle()
  if(&relativenumber == 1)
    set number
    set norelativenumber
  else
    set relativenumber
  endif
endfunc
