" Syntax Check / Language Support Configuration
" -----------------------------------------------------------------------------

" Enable deoplete and use ALE as completion sources for all code.
call deoplete#enable()
call deoplete#custom#option('sources', {
  \ '_': ['ale'],
\})

" Enable ALE fixers.
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'rust': ['rls'],
\}

" Enable ALE linters.
let g:ale_linters = {
\   'rust': [ 'rls' ],
\}
let g:ale_rust_rls_toolchain = 'stable' " this is needed, otherwise rls uses nightly toolchain

" Enable CTags for Rust.
autocmd BufRead *.rs :setlocal tags=./rusty-tags.vi;/
autocmd BufWritePost *.rs :silent! exec "!rusty-tags vi --quiet --start-dir=" . expand('%:p:h') . "&" | redraw!
autocmd BufRead *.rs :setlocal tags=./rusty-tags.vi;/,$RUST_SRC_PATH/rusty-tags.vi

" Open a window displaying errors if any exist.
let g:ale_open_list = 1

" Enable ALE completion.
let g:ale_completion_enabled = 1
let g:ale_completion_max_suggestions = 20
set completeopt=menu,menuone,noselect,noinsert
