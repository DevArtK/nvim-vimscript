
"===== ===== PLUGINS ===== ===== 
 call plug#begin('~/.vim/plugged')

" -----  Git Plugin -----
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" ----- Saga -----
Plug 'glepnir/lspsaga.nvim'

" ----- Emmet -----
Plug 'mattn/emmet-vim'


" ----- Starify - Start Menu -----
Plug 'mhinz/vim-startify'

" ----- Light Line -----
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'


" ----- Auto Bracket Pairs -----
"Plug 'jiangmiao/auto-pairs'
Plug 'windwp/nvim-autopairs'
"Plug 'tmsvg/pear-tree'
Plug 'alvan/vim-closetag'

" ----- Easy Motion -----
Plug 'easymotion/vim-easymotion'

" ----- Themes -----
Plug 'rafi/awesome-vim-colorschemes'
Plug 'lifepillar/vim-gruvbox8'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'Erichain/vim-monokai-pro'
"Plug 'sainnhe/gruvbox-material'

" ----- RipGrep -----
Plug 'jremmen/vim-ripgrep'

" ----- Signature (Marks In Buffer) ----
Plug 'kshenoy/vim-signature'

" ----- COC Completion -----
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" ----- Nvim LSP -----
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'

Plug 'mfussenegger/nvim-jdtls'

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'

" ----- Language Packages -----
"Plug 'sheerun/vim-polyglot'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

" ----- LSPs -----
" Need to Update to 0.5 HEAD (nightly), build from source/use appimage
Plug 'mfussenegger/nvim-jdtls'
"Plug 'mattn/vim-lsp-settings'
"Plug 'kabouzeid/nvim-lspinstall'


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

" ----- FZF Finder -----
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'hankchiutw/nerdtree-ranger.vim'

" -----  Rainbow Bracket -----
Plug 'p00f/nvim-ts-rainbow'
"Plug 'frazrepo/vim-rainbow'

" ----- Vim Surround -----
Plug 'tpope/vim-surround'
" ----- Colorizer -----
Plug 'norcalli/nvim-colorizer.lua'

call plug#end()


" =============== Server Configs ================
" $HOME/.local/share/vim-lsp-settings/servers
" $XDG_DATA_HOME/vim-lsp-settings/servers


