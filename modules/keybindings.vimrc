let mapleader = "\<Space>"
let maplocalleader = "\\"

" -- Normal Mode Remaps
nnoremap ; :
noremap <Leader>q" ciw""<Esc>P
noremap <Leader>q' ciw''<Esc>P

nnoremap <leader>vs :vsplit<CR>
nnoremap <leader>hs :hsplit<CR>

nnoremap <Leader>1 :noh<CR>
nnoremap <Leader>2 :w <CR> :!clear; python3 % <CR>
nnoremap <Leader>3 :w <CR> :!clear; node % <CR>
nnoremap <Leader>4 :!clear; g++ % && ./a.out<CR>
nnoremap <Leader>5 :w <CR> :!clear; javac % <CR>


"*-*-*-* Macro  *-*-*-*
let @q='ctrl + r ctrl + r q'
"" Quotes Around Word Under Cursor
let @a='viw<esc>a"<esc>bi"<esc>lel'
    
" ----- Easier moving between windows + tabs
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-L> <C-W>l<C-W>_
map <C-H> <C-W>h<C-W>_
map <C-K> <C-W>k<C-W>_
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
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



" ----- CoC Completion -----
fun! GoCoc()

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Use <c-space> to trigger completion.
if has('nvim')
    inoremap <silent><expr> <CR> coc#refresh()
else
    inoremap <silent><expr> <c-@> coc#refresh()
endif

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <buffer> <Leader>cr :CocRestart

 " Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
autocmd CursorHold * silent call CocActionAsync('highlight')

endfun
"
"                          " Make <CR> auto-select the first completion item
"                          and notify coc.nvim to
"                          " format on enter, <cr> could be remapped by other
"                          vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"





"                          " filenames like *.xml, *.html, *.xhtml, ...
"                          " These are the file extensions where this plugin
"                          is enabled.

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


" ----- Nerd Tree -----"
  autocmd vimenter * NERDTree
  autocmd StdinReadPre * let s:std_in=1
  autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
  map <C-n> :NERDTreeToggle<CR>
  let NERDTreeQuitOnOpen = 1
  let NERDTreeAutoDeleteBuffer = 1
  let NERDTreeMinimalUI = 1
  let NERDTreeDirArrows = 1
  let NERDTreeShowHidden=1

function! ToggleNERDTree()
    NERDTreeToggle
    silent NERDTreeMirror
endfunction


" ----- ----- Snippets Remaps ----- ----- -----

" Trigger configuration. You need to change this to something else than <tab>
" if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-n>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" = = = = = AutoCMD = = = = =
" ----- Vertically Center Upon Insert -----
autocmd InsertEnter * norm zz

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
nmap <leader>gf :diffget //2<CR>

" --- FZF --- FZF --- --- ----
"let g:fzf_preview_window = 'right:60%'


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
let &t_8b = "\<Esc>[48:2;%lu;%lu;%lum"

" ----- Syntastic Config -----
let g:syntastic_mode_map={'mode': 'passive'}
let g:syntastic_always_populate_loc_list=1
let g:syntastic_check_on_wq=1
let g:syntastic_auto_loc_list=1

" ----- LightLine Buffer -----

let g:lightline#bufferline#show_number = 1 

nmap 1 <Plug>lightline#bufferline#go(1)
nmap 2 <Plug>lightline#bufferline#go(2)
nmap 3 <Plug>lightline#bufferline#go(3)
nmap 4 <Plug>lightline#bufferline#go(4)
nmap 5 <Plug>lightline#bufferline#go(5)
nmap 6 <Plug>lightline#bufferline#go(6)
nmap 7 <Plug>lightline#bufferline#go(7)
nmap 8 <Plug>lightline#bufferline#go(8)
nmap 9 <Plug>lightline#bufferline#go(9)
nmap 0 <Plug>lightline#bufferline#go(10)

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
