" Syntax Check / Language Support Configuration
" -----------------------------------------------------------------------------

" Use filetype plugin `ftplugin` directory.
filetype plugin indent on

" http://vim.wikia.com/wiki/Make_Vim_completion_popup_menu_work_just_like_in_an_IDE
set completeopt=menu,menuone,preview,noselect,noinsert

" Conquer of Completion (COC)
" -----------------------------------------------------------------------------

" Use <Alt+Space> to open the completion window.
inoremap <silent><expr> <M-space> coc#refresh()

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')
