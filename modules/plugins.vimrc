
"===== ===== PLUGINS ===== ===== 
 call plug#begin('~/.vim/plugged')

" -----  Git Plugin -----
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" ----- Emmet -----
Plug 'mattn/emmet-vim'

" -----  Rainbow Bracket -----
Plug 'frazrepo/vim-rainbow'

" ----- Vim Surround -----
Plug 'tpope/vim-surround'

" ----- Starify - Start Menu -----
Plug 'mhinz/vim-startify'


" ----- Light Line -----
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'

" ----- Language Packages -----
Plug 'sheerun/vim-polyglot'

" ----- Auto Bracket Pairs -----
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'

" ----- Easy Motion -----
Plug 'easymotion/vim-easymotion'

" ----- Themes -----
Plug 'rafi/awesome-vim-colorschemes'
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'challenger-deep-theme/vim', {'name': 'challenger-deep-theme'}
Plug 'morhetz/gruvbox'
Plug 'Erichain/vim-monokai-pro'
Plug 'sainnhe/gruvbox-material'



" ----- FZF Finder -----
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" ----- RipGrep -----
Plug 'jremmen/vim-ripgrep'

" ----- Signature (Marks In Buffer) ----
Plug 'kshenoy/vim-signature'




" ----- COC Completion -----
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" ----- YCM Completion -----
"Plug 'ycm-core/YouCompleteMe'

" ----- Nvim LSP -----
"Plug 'neovim/nvim-lspconfig'
" Need to Update to 0.5 HEAD (nightly), build from source/use appimage



"----- File Directory -----
Plug 'preservim/nerdtree' |
    \ Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'preservim/nerdcommenter'
" ----- VimSpector -----
Plug 'puremourning/vimspector'
" ----- Undo Tree -----
Plug 'mbbill/undotree'

" ----- Snippets -----
Plug 'SirVer/ultisnips'

" ----- Python Syntax Highlighting -----
Plug 'vim-python/python-syntax'

" ----- Syntastic -----
Plug 'vim-Syntastic/syntastic'

" ----- Ale ------
Plug 'dense-analysis/ale'

" ----- Colorizer -----
Plug 'norcalli/nvim-colorizer.lua'

call plug#end()
