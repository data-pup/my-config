" add Rg ripgrep command
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg
    \ --colors=line:fg:0xae,0x81,0xff
    \ --colors=line:style:nobold
    \ --colors=path:fg:0xe6,0xc0,0x00
    \ --colors=path:style:underline
    \ --colors=match:fg:0x3a,0x37,0x4d
    \ --colors=match:bg:0xff,0xb8,0xd1
    \ --colors=match:style:bold
    \ --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
    \ {'options': '--delimiter : --nth 4..'},
    \   <bang>0)

" Gfp shortcut to show gitfiles with preview
command! -bang -nargs=* Gfp call fzf#vim#gitfiles('', fzf#vim#with_preview('right'))

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Constant'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }
