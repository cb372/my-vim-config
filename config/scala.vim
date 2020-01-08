au BufRead,BufNewFile *.sbt set filetype=scala
au BufRead,BufNewFile *.sc set filetype=scala

" Stop deoplete messing with coc.nvim's autocomplete
au FileType scala call g:deoplete#custom#option('auto_complete', v:false)


