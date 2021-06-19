let mapleader = "\<Space>"
let maplocalleader = "\\"

" -- Normal Mode Remaps
nnoremap ; :
" Fixes indentation in Visual Mode
vnoremap > >gv 
vnoremap < <gv

" View-ports : Splits
nnoremap <leader>hs :split<CR>
nnoremap <leader>Hs :vsplit<CR>

nnoremap <Leader>! :noh<CR>
nnoremap <Leader>2 :!node % <CR>
nnoremap <Leader>3 :!javac % <CR>
nnoremap <Leader>3 :!python3 % <CR>
nnoremap <Leader>4 :!g++ % && ./a.out<CR>

nnoremap <Leader>W :w<CR>
 
" Add Quotes Around word
noremap <Leader>q" ciw""<Esc>P
" Delete Quotes around word
nnoremap <Leader>Q daW"=substitute(@@,"'\\\|\"","","g")<CR>P



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
    
" --- Buffers
map <C-H> :new <CR>_
map <C-J> :bprev <CR>
map <C-K> :bnext <CR>
map <C-L> :bd <CR>

nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>
" Netrw
nnoremap <leader><leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>

nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>U :UndoTreeToggle<CR>

"" --- EASY MOTION REMAPS ---
map <leader><leader>w <Plug>(easymotion-bd-w)
map <leader><leader>e <Plug>(easymotion-bd-e)

"----- Yank from cursor to end line consistent with C and D
nnoremap Y y$"
" Yanks everything into the + register for system clipboard
nnoremap Y "+y


" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <C-Tab>   pumvisible() ? "\<C-n>" : "\<C-Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" ----- Nerd Tree -----"
"  autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>

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
"nnoremap <leader>gb  :Gblame<CR>
"nnoremap <leader>gc  :Gcommit<CR>
"nnoremap <leader>gca :Gcommit -aS<CR>
"nnoremap <leader>gd  :Gdiff<CR>
"nnoremap <leader>gl  :Gpull<CR>
"nnoremap <leader>gp  :Gpush<CR>
"nnoremap <leader>gr  :Gread<CR>
"nnoremap <leader>gs  :Gstatus<CR>
"nnoremap <leader>gw  :Gwrite<CR>

nmap <leader>gj :diffget //3<CR>
nmap <leader>gJ :diffget //2<CR>




" Terminal go back to normal mode
tnoremap <Esc> <C-\><C-n>
tnoremap :bd! <C-\><C-n>:q!<CR>


"----- ----- Visual Mode Maps
"vnoremap <A-J> :m '>+1<CR>gv=gv
"vnoremap <A-K> :m '<-2<CR>gv=gv
"nnoremap <A-j> :m .+1<CR>==
"nnoremap <A-k> :m .-2<CR>==

" Esc key to exit Fzf -- normally <C - [c | g | q]
"tnoremap <expr> <Esc> (&filetype == "fzf") ? "<Esc>" : "<c-\><c-n>"

"noremap <Leader>q' ciw''<Esc>P


" ----- SAGA
"  -- code action
nnoremap <silent><leader>ca <cmd>lua require('lspsaga.codeaction').code_action()<CR>
vnoremap <silent><leader>ca :<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>
"-- or use command
"nnoremap <silent><leader>ca :Lspsaga code_action<CR>
"vnoremap <silent><leader>ca :<C-U>Lspsaga range_code_action<CR

"-- show hover doc
nnoremap <silent> K <cmd>lua require('lspsaga.hover').render_hover_doc()<CR>
"-- or use command
"nnoremap <silent>K :Lspsaga hover_doc<CR>

"-- scroll down hover doc or scroll in definition preview
nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
"-- scroll up hover doc
nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>
