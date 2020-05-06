let b:ale_linters = [ 'rls' ]
let b:ale_fixers = ['rustfmt']

" Build the whole workspace, if we are editing a crate that is part of
" a Cargo workspace.
"
" NOTE: This might be a foolish choice, let's see.
let g:ale_rust_cargo_avoid_whole_workspace = 0

" Use stable toolchain for ALE.
let g:ale_rust_rls_toolchain = 'stable'

" Enable clippy as a linter for the rls.
let g:ale_rust_rls_config = {'rust': {'clippy_preference': 'on'} }

" Enable CTags for Rust.
autocmd BufRead *.rs :setlocal tags=./rusty-tags.vi;/
autocmd BufWritePost *.rs :silent! exec "!rusty-tags vi --quiet --start-dir=" . expand('%:p:h') . "&" | redraw!
autocmd BufRead *.rs :setlocal tags=./rusty-tags.vi;/,$RUST_SRC_PATH/rusty-tags.vi

" Enable specific column markers.
set colorcolumn=101,121

" Use `syntax` mode for folding.
" This behaves better when dealing with functions whose signature spans
" multiple lines; `where` trait bounds clauses for example, will not be hidden
" behind the fold.
set foldmethod=syntax
