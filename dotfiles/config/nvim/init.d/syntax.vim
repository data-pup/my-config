" Syntax Check / Language Support Configuration
" -----------------------------------------------------------------------------

" Use filetype plugin directory.
filetype plugin indent on

" Enable deoplete and use ALE as completion sources for all code.
call deoplete#enable()
call deoplete#custom#option('sources', {
  \ '_': ['ale'],
\})

" Enable ALE fixers.
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\}

" Run fixers (formatting) on save.
let g:ale_fix_on_save = 1

" Do not automatically open an error window. (we have a leader mapping.)
let g:ale_open_list = 0

" Enable ALE completion, set completion maximum suggestion count.
let g:ale_completion_enabled = 1
let g:ale_completion_max_suggestions = 20

" http://vim.wikia.com/wiki/Make_Vim_completion_popup_menu_work_just_like_in_an_IDE
set completeopt=menu,menuone,preview,noselect,noinsert

" ENTER accept completion suggestion
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
