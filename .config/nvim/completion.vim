let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#jedi#python_path = '/usr/bin/python3'
" Let <Tab> also do completion
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" Close the documentation window when completion is done
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
