let mapleader = "\<Space>"
let maplocalleader = "\\"

" -- Normal Mode Remaps
nnoremap ; :
"noremap <Leader>q" ciw""<Esc>P
"noremap <Leader>q' ciw''<Esc>P

nnoremap <leader>vs :vsplit<CR>
nnoremap <leader>hs :hsplit<CR>

nnoremap <Leader>1 :noh<CR>
nnoremap <Leader>2 :!clear; python3 % <CR>
nnoremap <Leader>3 :!clear; node % <CR>
nnoremap <Leader>4 :!clear; g++ % && ./a.out<CR>
nnoremap <Leader>5 :!clear; javac % <CR>

nnoremap <Leader>w :w<CR>
 
" Switch between relative and line numbers
function! NumberToggle()
  if(&relativenumber == 1)
    set nornu
    set number
  else
    set rnu
  endif
endfunc

" Toggle between normal and relative numbering.
nnoremap <leader>r :call NumberToggle()<cr>

"*-*-*-* Macro  *-*-*-*
let @q='ctrl + r ctrl + r q'
    
" ----- Easier moving between windows + tabs
"map <C-J> <C-W>j<C-W>_
map <C-J> :bnext <CR>

"map <C-K> <C-W>k<C-W>_
map <C-K> :bprev <CR>

"map <C-L> <C-W>l<C-W>_
map <C-L> :bd <CR>

"map <C-H> <C-W>h<C-W>_
"nnoremap <leader>h :wincmd h<CR>
"nnoremap <leader>j :wincmd j<CR>
"nnoremap <leader>k :wincmd k<CR>
"nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>U :UndoTreeToggle<CR>
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>

"" --- EASY MOTION REMAPS ---
map <leader><leader>w <Plug>(easymotion-bd-w)
map <leader><leader>e <Plug>(easymotion-bd-e)

"----- Yank from cursor to end line Consistant with C and D
nnoremap Y y$"

nnoremap <C-p> :FZF<CR>



" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c

"" ----- CoC Completion -----
"fun! GoCoc()

"function! s:check_back_space() abort
    "let col = col('.') - 1
    "return !col || getline('.')[col - 1]  =~# '\s'
"endfunction

"" tab trigger completion with chars ahead to nav
"inoremap <silent><expr> <TAB>
    "\ pumvisible() ? "\<C-n>" :
    "\ <SID>check_back_space() ? "\<TAB>" :
    "\ coc#refresh()
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

"" Use <c-space> to trigger completion.
"if has('nvim')
    "inoremap <silent><expr> <CR> coc#refresh()
"else
    "inoremap <silent><expr> <c-@> coc#refresh()
"endif

"nmap <silent> gd <Plug>(coc-definition)
"nmap <silent> gy <Plug>(coc-type-definition)
"nmap <silent> gi <Plug>(coc-implementation)
"nmap <silent> gr <Plug>(coc-references)
"nnoremap <buffer> <Leader>cr :CocRestart


"" Use `[g` and `]g` to navigate diagnostics
"" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
"nmap <silent> [g <Plug>(coc-diagnostic-prev)
"nmap <silent> ]g <Plug>(coc-diagnostic-next)

 "" Use K to show documentation in preview window.
"nnoremap <silent> K :call <SID>show_documentation()<CR>
"autocmd CursorHold * silent call CocActionAsync('highlight')

"endfun
""
""                          " Make <CR> auto-select the first completion item
""                          and notify coc.nvim to
""                          " format on enter, <cr> could be remapped by other
""                          vim plugin
"inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              "\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"


"" Coc - Documentation
"function! s:show_documentation()
  "if (index(['vim','help'], &filetype) >= 0)
    "execute 'h '.expand('<cword>')
  "elseif (coc#rpc#ready())
    "call CocActionAsync('doHover')
  "else
    "execute '!' . &keywordprg . " " . expand('<cword>')
  "endif
"endfunction

"" Coc -  Symbol renaming.
"nmap <leader>rn <Plug>(coc-rename)

"" Formatting selected code.
"xmap <leader>f  <Plug>(coc-format-selected)
"nmap <leader>f  <Plug>(coc-format-selected)


" ----- Nerd Tree -----"
"  autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle ..<CR>

function! ToggleNERDTree()
    NERDTreeToggle
    silent NERDTreeMirror
endfunction



" = = = = = AutoCMD = = = = =
" ----- Vertically Center Upon Insert -----
autocmd InsertEnter * norm zz
" Set the pwd to current fold | folder/file given when launching vim
autocmd vimenter * silent! lcd %:p:h




nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
" ------ Fugitive -----
nnoremap <leader>gb  :Gblame<CR>
nnoremap <leader>gc  :Gcommit<CR>
nnoremap <leader>gca :Gcommit -aS<CR>
nnoremap <leader>gd  :Gdiff<CR>
nnoremap <leader>gl  :Gpull<CR>
nnoremap <leader>gp  :Gpush<CR>
nnoremap <leader>gr  :Gread<CR>
nnoremap <leader>gs  :Gstatus<CR>
nnoremap <leader>gw  :Gwrite<CR>

nmap <leader>gj :diffget //3<CR>
nmap <leader>gJ :diffget //2<CR>

"nmap <A>1 <Plug>lightline#bufferline#go(1)
"nmap <A>2 <Plug>lightline#bufferline#go(2)
"nmap <A>3 <Plug>lightline#bufferline#go(3)
"nmap <A>4 <Plug>lightline#bufferline#go(4)
"nmap <A>5 <Plug>lightline#bufferline#go(5)
"nmap <A>6 <Plug>lightline#bufferline#go(6)
"nmap <A>7 <Plug>lightline#bufferline#go(7)
"nmap <A>8 <Plug>lightline#bufferline#go(8)
"nmap <A>9 <Plug>lightline#bufferline#go(9)
"nmap <A>0 <Plug>lightline#bufferline#go(10)

nmap <Leader>c1 <Plug>lightline#bufferline#delete(1)
nmap <Leader>c2 <Plug>lightline#bufferline#delete(2)
nmap <Leader>c3 <Plug>lightline#bufferline#delete(3)
nmap <Leader>c4 <Plug>lightline#bufferline#delete(4)
nmap <Leader>c5 <Plug>lightline#bufferline#delete(5)
nmap <Leader>c6 <Plug>lightline#bufferline#delete(6)
nmap <Leader>c7 <Plug>lightline#bufferline#delete(7)
nmap <Leader>c8 <Plug>lightline#bufferline#delete(8)
nmap <Leader>c9 <Plug>lightline#bufferline#delete(9)
nmap <Leader>c0 <Plug>lightline#bufferline#delete(10)


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

" Terminal go back to normal mode
tnoremap <Esc> <C-\><C-n>
tnoremap :bd! <C-\><C-n>:q!<CR>


"----- ----- Visual Mode Maps
vnoremap <A-J> :m '>+1<CR>gv=gv
vnoremap <A-K> :m '<-2<CR>gv=gv
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
