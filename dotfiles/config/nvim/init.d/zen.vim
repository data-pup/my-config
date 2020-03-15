" Zen mode mappings.
"
" This is bound in `leader.vim`, and provides a way to quickly disable other
" display information while working.

let g:limelight_paragraph_span = 0        " Local highlighting paragraph span.
let g:limelight_conceal_guifg = '#a8a4b1' " Dimmed text color used in Zen mode.
let g:goyo_width = 120                    " Window width in Zen mode.

" Enter Zen Mode. Hides other panes, tmux, command, cursor highlighting, and
" activates local syntax highlighting.
function! s:goyo_enter()
    silent !tmux set status off
    silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
    set noshowmode
    set noshowcmd
    set scrolloff=999
    Limelight
    set cursorline! cursorcolumn!
endfunction

" Exit Zen Mode. See `goyo_enter` above.
function! s:goyo_leave()
    silent !tmux set status on
    silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
    set showmode
    set showcmd
    set scrolloff=5
    Limelight!
    set cursorline cursorcolumn
endfunction

" Connect helper functions to Goyo.
autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

