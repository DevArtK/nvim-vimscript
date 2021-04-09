
filetype plugin indent on

set backspace=start,eol,indent
set encoding=utf-8 
set noerrorbells                                                                
syntax enable                                                                                                  
set hidden
set termguicolors
set title
set spell                                                                       
set autoread
set nowrap                                                                      
set incsearch                                                                   
set hlsearch
set showtabline=2
set noshowmode
set laststatus=2
set signcolumn=yes

set tabstop=4 softtabstop=4 shiftwidth=4                                                   
set smarttab
set autoindent smartindent expandtab
set number relativenumber                                                                                      
set linebreak                                                                                                  
set ruler                                                                                                      
set colorcolumn=80
set scrolloff=8
set cursorline                                                                                                 
set cursorcolumn                                                                                               

set sidescrolloff=5
set sidescrolloff=5
set history=100                                                                 
set t_Co=256                                                                    
set rulerformat=%l\:%c                                                          
highlight LineNr      term=bold cterm=bold ctermfg=2 guifg=#4379a0
highlight CursorLineNr guifg=#f39d62
highlight ColorColumn ctermbg=0 guibg=lightgrey


set pumheight=20                                                                
set cmdheight=1
set updatetime=300
set showcmd                                                                     
set noswapfile                                                                  
set undodir=~/Code/Nvim/BackupDir/UndoDir
set undofile       

set backup " Keep a backup after overwriting a file.
set writebackup " Write a backup file before overwriting a file.
set backupdir=~/Code/Nvim/BackupDir " List of directories to put backup files
" in.
set wildignore=*.swp,*.bak,*.pyc,*.class

set completeopt=menuone,noinsert,noselect,preview

"autocmd BufEnter * lcd %:p:h



" Toggle between normal and relative numbering
"nnoremap <leader>r :call NumberToggle()<cr>

lua require'colorizer'.setup()
