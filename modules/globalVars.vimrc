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
au BufReadPost *.conf set syntax=ini

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif


" ----- Nerd Tree -----
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeQuitOnOpen = 1
let NERDTreeDirArrows = 1  



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



" ----- LightLine Buffer -----
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



" File types ---------------------------------------------------------------------
"
" JavaScript
au BufNewFile,BufRead *.es6 setf javascript
" TypeScript
au BufNewFile,BufRead *.tsx setf typescriptreact
" Markdown
au BufNewFile,BufRead *.md set filetype=markdown
" Flow
au BufNewFile,BufRead *.flow set filetype=javascript

set suffixesadd=.js,.es,.jsx,.json,.css,.less,.sass,.styl,.php,.py,.md

autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2
" ---------------------------------------------------------------------
command! WipeReg for i in range(34,122) | silent! call setreg(nr2char(i), []) | endfor

au TextYankPost * lua vim.highlight.on_yank {higroup="IncSearch", timeout=150, on_visual=true}

function! OpenTerminal()
  split term://fish
  resize 10
endfunction
