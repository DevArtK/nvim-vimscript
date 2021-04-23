let g:kite_supported_languages = ['*']
let g:kite_auto_complete=1
let g:kite_tab_complete=1 

autocmd CompleteDone * if !pumvisible() | pclose | endif
let g:kite_previous_placeholder = '<C-H>'
let g:kite_next_placeholder = '<C-L>'
