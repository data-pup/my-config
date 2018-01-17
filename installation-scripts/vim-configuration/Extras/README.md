# Vim Extras

### Overview

This folder contains add-ons to vim that aren't required, but
are nice to have. These scripts assume that Pathogen has been
installed, and will clone the plug-in's repository inside of
the vim bundle directory.

Some of these require that changes be made to your
.vimrc file after cloning and installing them. This document
will cover what changes should be made. Refer to the project
repos linked in each script for more information about usage.

### Syntastic

Syntastic is a syntax checking plug-in. There are many config
options, but the recommended starting point is to add these
settings to your .vimrc:

```
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
```

### CtrlP

CtrlP is a full path, fuzzy finder for Vim.

```
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
```

### Vim-Dispatch

This is plugin allows for asynchronous use of Vim's
compiler plugins. Refer to the project repo for more
information, including a teaser video.


### NERDTree

NERDTree is a file system explorer for Vim. Once this is
installed, here are some things that can be added to your
vim configuration file.

To open a NERDTree automatically when vim starts up:

```
autocmd vimenter * NERDTree
```

To open NERDTree automatically when vim starts up on
opening a directory:

```
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
```

To map a specific key or shortcut to open NERDTree:

```
map <C-n> :NERDTreeToggle<CR>
```

To close vim if the only window left open is a NERDTree:

```
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
```
