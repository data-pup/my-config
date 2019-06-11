" activate Anyfold for all filetypes
autocmd Filetype * AnyFoldActivate

" start with all folds closed
set foldlevel=0

" underline folds
hi Folded term=underline

" Numberic fold level commands
nnoremap <A-1> :set foldlevel=0<CR>
nnoremap <A-2> :set foldlevel=1<CR>
nnoremap <A-3> :set foldlevel=2<CR>
nnoremap <A-4> :set foldlevel=3<CR>
nnoremap <A-5> :set foldlevel=4<CR>
nnoremap <A-6> :set foldlevel=5<CR>
nnoremap <A-7> :set foldlevel=6<CR>
nnoremap <A-8> :set foldlevel=7<CR>
nnoremap <A-9> :set foldlevel=8<CR>
nnoremap <A-0> :set foldlevel=99<CR>

