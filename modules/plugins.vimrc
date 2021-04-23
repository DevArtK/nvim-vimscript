
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
"Plug 'vim-airline/vim-airline-themes'
Plug 'lifepillar/vim-gruvbox8'
"Plug 'Erichain/vim-monokai-pro'
"Plug 'sainnhe/gruvbox-material'

" ----- RipGrep -----
Plug 'jremmen/vim-ripgrep'

" ----- Signature (Marks In Buffer) ----
Plug 'kshenoy/vim-signature'

" ----- COC Completion -----
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" ----- Nvim LSP -----
"Plug 'neovim/nvim-lspconfig'
"Plug 'nvim-lua/completion-nvim'
"Plug 'mattn/vim-lsp-settings'
"Plug 'kabouzeid/nvim-lspinstall'
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
Plug 'honza/vim-snippets'

" ----- Python Syntax Highlighting -----
Plug 'vim-python/python-syntax'

" ----- Syntastic -----
Plug 'vim-Syntastic/syntastic'

" ----- FZF Finder -----
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'hankchiutw/nerdtree-ranger.vim'

" ----- Colorizer -----
Plug 'norcalli/nvim-colorizer.lua'

call plug#end()


" =============== Server Configs ================
" $HOME/.local/share/vim-lsp-settings/servers
" $XDG_DATA_HOME/vim-lsp-settings/servers


