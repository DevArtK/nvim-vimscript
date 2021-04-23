"autocmd BufEnter * lua require'completion'.on_attach()

autocmd VimEnter *
       \   if !argc()
       \ |   Startify
       "\ |   wincmd q
       "\ |   NERDTree
\ | endif


"Opens Directory Search on current level
autocmd BufEnter * lcd %:p:h

let g:completion_matching_strategy_list=['exact', 'substring', 'fuzzy']

" ----- Nerd Tree -----
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeQuitOnOpen = 1
let NERDTreeDirArrows = 1  

" ----- ----- HTML Types, JSX, CSS ----- -----
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
"
" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified
" files.

let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.

let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
"This will make the list of non-closing tags self-closing in the specified
" files.

let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>`
" will be closed while `<link>` won't.)
" "
let g:closetag_emptyTags_caseSensitive = 1



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
nnoremap <A-t> :call TermToggle(12)<CR>
inoremap <A-t> <Esc>:call TermToggle(12)<CR>
tnoremap <A-t> <C-\><C-n>:call TermToggle(12)<CR>

"" --- vim go (polyglot) settings.
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 1
let g:go_auto_sameids = 1

let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48:2;%lu;%lu;%lum"

" ----- Syntastic Config -----
let g:syntastic_mode_map={'mode': 'passive'}
let g:syntastic_always_populate_loc_list=1
let g:syntastic_check_on_wq=1
let g:syntastic_auto_loc_list=1

" ----- LightLine Buffer -----
autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()
let g:lightline#bufferline#show_number = 1 
let g:lightline#bufferline#show_number = 1 
let g:rainbow_active = 1



autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType xml setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType htmldjango setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType htmldjango inoremap {{ {{  }}<left><left><left>
autocmd FileType htmldjango inoremap {% {%  %}<left><left><left>
autocmd FileType htmldjango inoremap {# {#  #}<left><left><left>
autocmd FileType markdown setlocal shiftwidth=2 tabstop=2 softtabstop=2
