" Treat Varnish test case files as configuration files. This does a fine
" enough job for highlighting strings and comments.
au BufRead,BufNewFile *.vtc		setfiletype conf
