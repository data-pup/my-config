" Enable CTags for Rust.
autocmd BufRead *.rs :setlocal tags=./rusty-tags.vi;/
autocmd BufWritePost *.rs :silent! exec "!rusty-tags vi --quiet --start-dir=" . expand('%:p:h') . "&" | redraw!
autocmd BufRead *.rs :setlocal tags=./rusty-tags.vi;/,$RUST_SRC_PATH/rusty-tags.vi

" Enable specific column markers.
set colorcolumn=101,121

" Automatically format files when they are saved.
autocmd BufWritePost *.rs :Format
