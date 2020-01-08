let g:deoplete#enable_at_startup = 1

" Remap <tab> to allow cycling through the deoplete list, but only when the
" deoplete list window is open. Leave <tab> alone the rest of the time.
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

