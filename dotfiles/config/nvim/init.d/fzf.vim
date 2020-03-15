" fzf.vim Helper Functions:
"
" Use :Rg to search file contents.
" Use :Gfp to search file names.

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
    \ 'rg --column --no-heading --line-number --color=always
        \ '.shellescape(<q-args>),
  \ 1,
  \ fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}),
  \ <bang>0)

" Gfp shortcut to show gitfiles with preview
command! -bang -nargs=* Gfp call fzf#vim#gitfiles('', fzf#vim#with_preview('right'))
