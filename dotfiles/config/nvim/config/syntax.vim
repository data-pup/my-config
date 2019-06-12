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

