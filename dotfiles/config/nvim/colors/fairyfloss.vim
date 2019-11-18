" Source: https://raw.githubusercontent.com/tssm/fairyfloss.vim/master/colors/fairyfloss.vim
" Place this file in "~/.config/nvim/colors/" to use this theme.

set background=dark
highlight clear

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'fairyfloss'

" If we would like an opaque background:
" hi Normal guifg=#f8f8f0 guibg=#5a5475 gui=NONE

" Transparent background:
hi Normal guifg=#f8f8f0 guibg=NONE ctermbg=NONE

" hi NormalNC

" UI {{{

" Text area {{{

"hi Conceal
hi ColorColumn guifg=NONE guibg=#716799 gui=NONE
hi Directory guifg=#c5a3ff guibg=NONE gui=NONE
hi MatchParen guifg=#f8f8f0 guibg=#e6c000 gui=NONE
"hi SpecialKey
"hi Whitespace

" }}}

" Side columns {{{

hi LineNr guifg=#a8a4b1 guibg=NONE gui=italic " fg is not defined on the original theme. It was taken using Digital Color Meter
hi link LineNr EndOfBuffer
hi NonText guifg=#a8a4b1 guibg=NONE gui=NONE " fg is not defined on the original theme. It was taken using Digital Color Meter
hi SignColumn guifg=#a8a4b1 guibg=NONE gui=NONE
hi VertSplit guifg=#373348 guibg=bg gui=NONE

" }}}

" Command line {{{

hi ErrorMsg guifg=#f8f8f0 guibg=#f92672 gui=NONE
" MsgSeparator
"hi ModeMsg
hi MoreMsg guifg=#c2ffdf guibg=bg gui=NONE
hi Question guifg=#c2ffdf guibg=bg gui=NONE
hi Title guifg=fg guibg=NONE gui=bold
hi WarningMsg guifg=#f8f8f0 guibg=#f92672 gui=NONE

" }}}

" Completion {{{

hi Pmenu guifg=fg guibg=#ae81ff gui=NONE
hi PmenuSel guifg=fg guibg=#ffb8d1 gui=bold
"hi PmenuSbar
"hi PmenuThumb

" }}}

" Cursor {{{

"hi Cursor
"hi CursorIM
hi CursorColumn guifg=NONE guibg=#716799 gui=NONE
hi! link CursorLine CursorColumn
hi CursorLineNr guifg=#c5a3ff guibg=#716799 gui=bold " fg is not defined on the original theme. It was taken using Digital Color Meter

" }}}

" Diff {{{

hi DiffAdd guifg=NONE guibg=#5b8565 gui=NONE
hi DiffChange guifg=NONE guibg=#5e828c gui=NONE
hi DiffDelete guifg=NONE guibg=#8c5e7e gui=NONE
hi DiffText guifg=NONE guibg=#5e828c gui=inverse

" }}}

" Folds {{{

"hi FoldColumn
" underline folds
hi Folded guifg=#a8a4b1 guibg=NONE gui=underline

" }}}

" Search / Substitution {{{

hi IncSearch guifg=bg guibg=#c2ffdf gui=NONE
hi Search guifg=NONE guibg=NONE gui=inverse
hi Substitute guifg=#f8f8f0 guibg=#f92672 gui=NONE
"hi QuickFixLine

" }}}

" Selection {{{

hi Visual guifg=NONE guibg=#8077A8 gui=NONE
"hi VisualNOS

" }}}

" Spelling {{{

hi SpellBad guifg=NONE guibg=NONE gui=undercurl
"hi SpellCap
"hi SpellLocal
"hi SpellRare

" }}}

" Status line {{{

hi StatusLine guifg=#a8a4b1 guibg=#373348 gui=NONE
hi StatusLineNC guifg=#a8a4b1 guibg=#373348 gui=NONE
hi WildMenu guifg=bg guibg=#c2ffdf gui=bold

" }}}

" Tabline {{{

hi TabLine guifg=#a8a4b1 guibg=#373348 gui=NONE
hi TabLineFill guifg=#a8a4b1 guibg=#373348 gui=NONE
hi TabLineSel guifg=#a8a4b1 guibg=bg gui=NONE

" }}}

" Terminal {{{

"hi StatusLineTerm
"hi StatusLineTermNC
"hi TermCursor
"hi TermCursorNC

" }}}

" }}}

" Text {{{

hi Comment guifg=#e6c000 guibg=NONE gui=italic

hi Constant guifg=#c5a3ff guibg=NONE gui=NONE
hi String guifg=#ffea00 guibg=NONE gui=NONE
hi Character guifg=#c5a3ff guibg=NONE gui=NONE
hi Number guifg=#c5a3ff guibg=NONE gui=NONE
hi Boolean guifg=#c5a3ff guibg=NONE gui=NONE
hi Float guifg=#c5a3ff guibg=NONE gui=NONE

hi Identifier guifg=#c2ffdf guibg=NONE gui=bold
hi Function guifg=#fff352 guibg=NONE gui=NONE

hi Statement guifg=#ffb8d1 guibg=NONE gui=italic
hi Conditional guifg=#ffb8d1 guibg=NONE gui=italic
hi Repeat guifg=#ffb8d1 guibg=NONE gui=italic
hi Label guifg=#ffea00 guibg=NONE gui=italic
hi Operator guifg=#ffb8d1 guibg=NONE gui=NONE
hi Keyword guifg=#ffb8d1 guibg=NONE gui=italic
"hi Exception

hi PreProc guifg=#ffb8d1 guibg=NONE gui=NONE
"hi Include
hi Define guifg=#ffb8d1 guibg=NONE gui=NONE
"hi Macro
"hi PreCondit

hi Type guifg=#fff352 guibg=NONE gui=italic
hi StorageClass guifg=#ffb8d1 guibg=NONE gui=italic
hi Structure guifg=#fff352 guibg=NONE gui=NONE
"hi Typedef

hi Special guifg=#ff857f guibg=NONE gui=NONE
"hi SpecialChar
hi Tag guifg=#ffb8d1 guibg=NONE gui=NONE
"hi Delimiter
"hi SpecialComment
"hi Debug

hi Underlined guifg=NONE guibg=NONE gui=underline

"hi Ignore

hi Error guifg=#f8f8f0 guibg=#f92672 gui=NONE

hi Todo guifg=#e6c000 guibg=NONE gui=inverse,bold

hi rubyClass guifg=#ffb8d1 guibg=NONE gui=NONE
hi rubyFunction guifg=#fff352 guibg=NONE gui=NONE
hi rubyInterpolationDelimiter guifg=NONE guibg=NONE gui=NONE
hi rubySymbol guifg=#c5a3ff guibg=NONE gui=NONE
hi rubyConstant guifg=#c2ffdf guibg=NONE gui=italic
hi rubyStringDelimiter guifg=#ffea00 guibg=NONE gui=NONE
hi rubyBlockParameter guifg=#ff857f guibg=NONE gui=italic
hi rubyInstanceVariable guifg=NONE guibg=NONE gui=NONE
hi rubyInclude guifg=#ffb8d1 guibg=NONE gui=NONE
hi rubyGlobalVariable guifg=NONE guibg=NONE gui=NONE
hi rubyRegexp guifg=#ffea00 guibg=NONE gui=NONE
hi rubyRegexpDelimiter guifg=#ffea00 guibg=NONE gui=NONE
hi rubyEscape guifg=#c5a3ff guibg=NONE gui=NONE
hi rubyControl guifg=#ffb8d1 guibg=NONE gui=NONE
hi rubyClassVariable guifg=NONE guibg=NONE gui=NONE
hi rubyOperator guifg=#ffb8d1 guibg=NONE gui=NONE
hi rubyException guifg=#ffb8d1 guibg=NONE gui=NONE
hi rubyPseudoVariable guifg=NONE guibg=NONE gui=NONE
hi rubyRailsUserClass guifg=#c2ffdf guibg=NONE gui=italic
hi rubyRailsARAssociationMethod guifg=#c2ffdf guibg=NONE gui=NONE
hi rubyRailsARMethod guifg=#c2ffdf guibg=NONE gui=NONE
hi rubyRailsRenderMethod guifg=#c2ffdf guibg=NONE gui=NONE
hi rubyRailsMethod guifg=#c2ffdf guibg=NONE gui=NONE

hi erubyDelimiter guifg=NONE guibg=NONE gui=NONE
hi erubyComment guifg=#e6c000 guibg=NONE gui=NONE
hi erubyRailsMethod guifg=#c2ffdf guibg=NONE gui=NONE

hi htmlTag guifg=NONE guibg=NONE gui=NONE
hi htmlEndTag guifg=NONE guibg=NONE gui=NONE
hi htmlTagName guifg=NONE guibg=NONE gui=NONE
hi htmlArg guifg=NONE guibg=NONE gui=NONE
hi htmlSpecialChar guifg=#c5a3ff guibg=NONE gui=NONE

hi javaScriptFunction guifg=#c2ffdf guibg=NONE gui=italic
hi javaScriptRailsFunction guifg=#c2ffdf guibg=NONE gui=NONE
hi javaScriptBraces guifg=NONE guibg=NONE gui=NONE

hi yamlKey guifg=#ffb8d1 guibg=NONE gui=NONE
hi yamlAnchor guifg=NONE guibg=NONE gui=NONE
hi yamlAlias guifg=NONE guibg=NONE gui=NONE
hi yamlDocumentHeader guifg=#ffea00 guibg=NONE gui=NONE

hi cssURL guifg=#ff857f guibg=NONE gui=italic
hi cssFunctionName guifg=#c2ffdf guibg=NONE gui=NONE
hi cssColor guifg=#c5a3ff guibg=NONE gui=NONE
hi cssPseudoClassId guifg=#fff352 guibg=NONE gui=NONE
hi cssClassName guifg=#fff352 guibg=NONE gui=NONE
hi cssValueLength guifg=#c5a3ff guibg=NONE gui=NONE
hi cssCommonAttr guifg=#c2ffdf guibg=NONE gui=NONE
hi cssBraces guifg=NONE guibg=NONE gui=NONE

" }}}
