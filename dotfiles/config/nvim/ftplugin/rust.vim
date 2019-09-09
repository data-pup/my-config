let b:ale_linters = [ 'rls' ]
let b:ale_fixers = ['rustfmt']

" Use stable toolchain for ALE.
let g:ale_rust_rls_toolchain = 'stable'

" Enable CTags for Rust.
autocmd BufRead *.rs :setlocal tags=./rusty-tags.vi;/
autocmd BufWritePost *.rs :silent! exec "!rusty-tags vi --quiet --start-dir=" . expand('%:p:h') . "&" | redraw!
autocmd BufRead *.rs :setlocal tags=./rusty-tags.vi;/,$RUST_SRC_PATH/rusty-tags.vi
