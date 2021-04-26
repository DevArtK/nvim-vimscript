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
    
map <C-J> :bnext <CR>
map <C-K> :bprev <CR>
map <C-L> :bd <CR>
map <C-H> :new <CR>_
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>U :UndoTreeToggle<CR>

"" --- EASY MOTION REMAPS ---
map <leader><leader>w <Plug>(easymotion-bd-w)
map <leader><leader>e <Plug>(easymotion-bd-e)

"----- Yank from cursor to end line Consistant with C and D
"nnoremap Y y$"
" Yanks everything into the + register for system clipboard
nnoremap Y "+y
vnoremap Y "+y

" ----- FZF -----
nnoremap <C-p> :FZF<CR>
" Esc key to exit Fzf -- normally <C - [c | g | q]
tnoremap <expr> <Esc> (&filetype == "fzf") ? "<Esc>" : "<c-\><c-n>"

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
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

"nmap <Leader>c1 <Plug>lightline#bufferline#delete(1)
"nmap <Leader>c2 <Plug>lightline#bufferline#delete(2)
"nmap <Leader>c3 <Plug>lightline#bufferline#delete(3)
"nmap <Leader>c4 <Plug>lightline#bufferline#delete(4)
"nmap <Leader>c5 <Plug>lightline#bufferline#delete(5)
"nmap <Leader>c6 <Plug>lightline#bufferline#delete(6)
"nmap <Leader>c7 <Plug>lightline#bufferline#delete(7)
"nmap <Leader>c8 <Plug>lightline#bufferline#delete(8)
"nmap <Leader>c9 <Plug>lightline#bufferline#delete(9)
"nmap <Leader>c0 <Plug>lightline#bufferline#delete(10)



" Terminal go back to normal mode
tnoremap <Esc> <C-\><C-n>
tnoremap :bd! <C-\><C-n>:q!<CR>


"----- ----- Visual Mode Maps
vnoremap <A-J> :m '>+1<CR>gv=gv
vnoremap <A-K> :m '<-2<CR>gv=gv
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
