"autocmd BufEnter * lua require'completion'.on_attach()


autocmd VimEnter *
       \   if !argc()
       \ |   Startify
       "\ |   wincmd q
       "\ |   NERDTree
\ | endif
let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

"Opens Directory Search on current level

autocmd BufEnter * lcd %:p:h

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" ----- Completion -----
let g:completion_matching_strategy_list=['fuzzy', 'substring', 'exact']
let g:completion_enable_auto_hover = 1
" possible value: "length", "alphabet", "none" ; decides how items are sorted
let g:completion_sorting = "length"

let g:completion_matching_smart_case = 1
" let g:completion_matching_ignore_case = 1
let g:completion_enable_auto_paren = 1
let g:completion_enable_auto_signature = 0
let g:completion_enable_snippet = 'UltiSnips'

" ----- Nerd Tree -----
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeQuitOnOpen = 1
let NERDTreeDirArrows = 1  


" --- FZF --- FZF --- --- ----
"let g:fzf_preview_window = 'right:60%'
let g:fzf_preview_window = ['right:30%', 'ctrl-/']
let g:fzf_buffers_jump = 1

" Terminal Function
let g:term_buf = 0
let g:term_win = 0
function! TermToggle(height)
    if win_gotoid(g:term_win)
        hide
    else
        botright new
        exec "resize " . a:height
        try
            exec "buffer " . g:term_buf
        catch
            call termopen($SHELL, {"detach": 0})
            let g:term_buf = bufnr("")
            set nonumber
            set norelativenumber
            set signcolumn=no
        endtry
        startinsert!
        let g:term_win = win_getid()
    endif
endfunction


" Toggle terminal on/off (neovim)
nnoremap <A-t> :call TermToggle(10)<CR>
inoremap <A-t> <Esc>:call TermToggle(10)<CR>
tnoremap <A-t> <C-\><C-n>:call TermToggle(10)<CR>

let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48:2;%lu;%lu;%lum"


" ----- LightLine Buffer -----
autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()
let g:lightline#bufferline#show_number = 1 

" ----- Rainbow brackets
let g:rainbow_active = 1
let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
    \ ]

let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']




