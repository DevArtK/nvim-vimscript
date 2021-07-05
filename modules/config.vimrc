filetype plugin indent on

set backspace=start,eol,indent
set encoding=utf-8 
set fileencoding=utf-8
set shell=fish

syntax enable                                                                                                  
set nospell                                                                       
set incsearch                                                                   
set hlsearch
set ignorecase
set smartcase

set noerrorbells                                                                
set hidden
set termguicolors
set title
set autoread
set nowrap                                                                      
set showtabline=2
set noshowmode
set laststatus=2
set signcolumn=yes


set tabstop=2 softtabstop=2 shiftwidth=2                                                   
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

set pumheight=30                                                                
set cmdheight=1
set updatetime=300
set showcmd                                                                     


set noswapfile                                                                  
set nowritebackup " Write a backup file before overwriting a file.
set backupdir=~/Documents/Backups/Nvim/BackupDir " List of directories to put backup files
set nobackup " Keep a backup after overwriting a file.
set undofile       
set undodir=~/Documents/Backups/Nvim/UndoDir

" in.
set wildignore=*.swp,*.bak,*.pyc,*.class,*/node_modules/*
set autowrite

set wildmenu
set wildmode=longest,list,full
set completeopt=menuone,noinsert,noselect
set shortmess+=c


set splitbelow
set splitright
" Auto adjust window sizes when they become current {{{2
"set winwidth=84
"set winheight=5
"set winminheight=5
"set winheight=999

set ttyfast
set lazyredraw

if has('nvim')
  set inccommand=split
endif

lua require'colorizer'.setup()
