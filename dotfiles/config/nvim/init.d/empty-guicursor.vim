" Neovim and Konsole seem to have trouble playing together nicely when
" changing font-sizes. This is a hellish, unintuitive kludge to stop
" nightmare rendering bugs that happen when Neovim is opened with a
" different font-size than specified in Konsole's profile.
" For more info:
"     * https://github.com/neovim/neovim/issues/6798
"     * https://github.com/neovim/neovim/issues/8300
"
" NOTE: Yes, this is worth the effort to have ligatures, don't @ me.
set guicursor=
