if !exists('g:loaded_completion') | finish | endif

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

let g:completion_confirm_key = ""
imap <expr> <cr>  pumvisible() ? complete_info()["selected"] != "-1" ?
                 \ "\<Plug>(completion_confirm_completion)"  : "\<c-e>\<CR>" :  "\<CR>"


" ----- Completion -----
let g:completion_matching_strategy_list=['exact', 'substring', 'fuzzy']
let g:completion_enable_auto_hover = 1
let g:completion_enable_auto_signature = 1

" possible value: "length", "alphabet", "none" ; decides how items are sorted
let g:completion_sorting = "alphabet"

let g:completion_matching_smart_case = 1
" let g:completion_matching_ignore_case = 1
let g:completion_enable_auto_paren = 1
let g:completion_enable_auto_signature = 0
let g:completion_enable_snippet = 'UltiSnips'

let g:completion_trigger_character = ['.', '::']

let g:completion_trigger_keyword_length = 3 " default = 1

