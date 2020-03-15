" Add `:Format` command to format current buffer with COC.
command! -nargs=0 Format :call CocAction('format')

" Show documentation in preview window.
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Add `:Symbols` command to navigate project via symbols.
command! -nargs=0 Symbols :call CocList --auto-preview --interactive --tab --top symbols

" Add `:Diagnostics` command to navigate project via compiler diagnostics
command! -nargs=0 Diagnostics :call CocList --auto-preview --tab --top diagnostics

" Toggle relative line numbering.
function! NumberToggle()
  if(&relativenumber == 1)
    set number
    set norelativenumber
  else
    set relativenumber
  endif
endfunc

