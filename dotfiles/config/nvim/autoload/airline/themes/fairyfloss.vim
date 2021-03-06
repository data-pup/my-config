" Color palette
let s:guiShadow      = "#3b3a32" " shadow
let s:guiDarkGray    = "#3a374d" " dark gray
let s:guiBgPurple    = "#8076aa" " background purple
let s:guiGray        = "#49483e" " gray
let s:guiViolet      = "#63588d" " violet
let s:guiDustyLilac  = "#efe6ff" "dusty-lilac
let s:guiSeafoam     = "#c2ffdf" "seafoam
let s:guiSilver      = "#f8f8f0" "silver
let s:guiFuschia     = "#f92672" "fuschia
let s:guiPeach       = "#ff857f" "peach
let s:guiGold        = "#e6c000" "gold
let s:guiDarkSeafoam = "#80ffbd" "dark-seafoam
let s:guiLilac       = "#c5a3ff" "lilac
let s:guiLavender    = "#ae81ff" "lavender
let s:guiRose        = "#ffb8d1" "rose
let s:guiGoldenrod   = "#fffea0" "goldenrod

let s:ctermShadow      = "233"
let s:ctermDarkGray    = "235"
let s:ctermBgPurple    = "59"
let s:cterm03          = "66"
let s:cterm04          = "145"
let s:cterm05          = "152"
let s:cterm06          = "188"
let s:ctermSilver      = "189"
let s:ctermFuschia     = "88"
let s:cterm09          = "209"
let s:cterm0A          = "221"
let s:ctermDarkSeafoam = "22"
let s:cterm0C          = "73"
let s:ctermLavender    = "25"
let s:cterm0E          = "176"
let s:cterm0F          = "137"

let s:guiWhite = "#f8f8f0"
let s:guiGray = "#8076aa"
let s:ctermWhite = "231"
let s:ctermGray = "243"

let g:airline#themes#fairyfloss#palette = {}
let s:modified = { 'airline_c': [ s:guiGold, '', 215, '', '' ] }
let s:warning = [ s:guiWhite , s:guiGold , 232, 92, '']
let s:error = [ s:guiWhite , s:guiGold , 232, 92, '']

" Normal mode
let s:N1 = [ s:guiDarkGray , s:guiWhite , s:ctermSilver , s:ctermLavender  ]
let s:N2 = [ s:guiWhite , s:guiLavender , s:ctermWhite , s:ctermDarkGray  ]
let s:N3 = [ s:guiLavender , s:guiDarkGray , s:ctermBgPurple , s:ctermShadow  ]
let g:airline#themes#fairyfloss#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#fairyfloss#palette.normal.airline_warning = s:warning
let g:airline#themes#fairyfloss#palette.normal.airline_error = s:error
let g:airline#themes#fairyfloss#palette.normal_modified = s:modified
let g:airline#themes#fairyfloss#palette.normal_modified.airline_warning = s:warning
let g:airline#themes#fairyfloss#palette.normal_modified.airline_error = s:error

" Insert mode
let s:I1 = s:N1
let s:I2 = [ s:guiWhite , s:guiRose , s:ctermWhite , s:ctermDarkGray  ]
let s:I3 = [ s:guiRose , s:guiDarkGray , s:ctermWhite , s:ctermShadow  ]
let g:airline#themes#fairyfloss#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#fairyfloss#palette.insert.airline_warning = s:warning
let g:airline#themes#fairyfloss#palette.insert.airline_error = s:error
let g:airline#themes#fairyfloss#palette.insert_modified = s:modified
let g:airline#themes#fairyfloss#palette.insert_modified.airline_warning = s:warning
let g:airline#themes#fairyfloss#palette.insert_modified.airline_error = s:error

" Visual mode
let s:V1 = s:N1
let s:V2 = [ s:guiWhite , s:guiGold , s:ctermWhite , s:ctermDarkGray  ]
let s:V3 = [ s:guiGold , s:guiDarkGray , s:ctermWhite , s:ctermShadow  ]
let g:airline#themes#fairyfloss#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#fairyfloss#palette.visual_modified = s:modified

" Replace mode
let s:R1 = s:N1
let s:R2 = s:V2
let s:R3 = s:V3
let g:airline#themes#fairyfloss#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#fairyfloss#palette.replace_modified = s:modified

" Inactive mode
let s:IN1 = [ s:guiGray , s:guiDarkGray , s:ctermGray , s:ctermDarkGray ]
let s:IN2 = [ s:guiBgPurple , s:guiDarkGray , s:ctermBgPurple , s:ctermShadow ]
let s:IN3 = [ s:guiBgPurple , s:guiDarkGray , s:ctermBgPurple , s:ctermShadow ]
let g:airline#themes#fairyfloss#palette.inactive = airline#themes#generate_color_map(s:IN1, s:IN2, s:IN3)
let g:airline#themes#fairyfloss#palette.inactive_modified = s:modified

" Command mode
let s:C1 = [ s:guiWhite , s:guiDarkGray , s:ctermSilver , s:ctermLavender  ]
let s:C2 = s:I2
let s:C3 = s:I3
let g:airline#themes#fairyfloss#palette.commandline = airline#themes#generate_color_map(s:C1, s:C2, s:C3)
let g:airline#themes#fairyfloss#palette.commandline_modified = s:modified

" This is used for misc. accents, such as the read-only flag.
let g:airline#themes#fairyfloss#palette.accents = {
  \ 'red': [ s:guiFuschia, '' , 160 , ''  ]
  \ }
