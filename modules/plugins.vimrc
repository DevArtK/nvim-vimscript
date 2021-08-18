
"===== ===== PLUGINS ===== ===== 
 call plug#begin('~/.vim/plugged')

" -----  Git Plugin -----
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" ----- Emmet -----
Plug 'mattn/emmet-vim'

" ----- Markdown Preview -----
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
" ----- ASCII Diagrams -----
Plug 'jbyuki/venn.nvim'

" ----- Starify - Start Menu -----
Plug 'mhinz/vim-startify'

" ----- Light Line -----
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'

" ----- Auto Bracket Pairs -----
Plug 'windwp/nvim-autopairs'
Plug 'alvan/vim-closetag'

" ----- Easy Motion -----
Plug 'easymotion/vim-easymotion'

" ----- Themes -----
Plug 'sainnhe/gruvbox-material'
Plug 'lifepillar/vim-gruvbox8'
Plug 'kyazdani42/nvim-web-devicons'
"Plug 'ryanoasis/vim-devicons'

" ----- RipGrep -----
Plug 'jremmen/vim-ripgrep'

" ----- Signature (Marks In Buffer) ----
Plug 'kshenoy/vim-signature'

" ----- COC Completion -----
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'sheerun/vim-polyglot'

"----- File Directory -----
"Plug 'preservim/nerdtree' |
    "\ Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'hankchiutw/nerdtree-ranger.vim'
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

" -----  Rainbow Bracket -----
Plug 'p00f/nvim-ts-rainbow'
"Plug 'frazrepo/vim-rainbow'

" ----- Vim Surround -----
Plug 'tpope/vim-surround'
" ----- Colorizer -----
Plug 'norcalli/nvim-colorizer.lua'

if has("nvim")
    " ----- Nvim LSP -----
    Plug 'neovim/nvim-lspconfig'
    Plug 'nvim-lua/completion-nvim'

    Plug 'mfussenegger/nvim-jdtls'

    " ----- Saga -----
    Plug 'glepnir/lspsaga.nvim'

    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'

    " ----- Language Packages -----
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'nvim-treesitter/playground'

    " ----- LSPs -----
    Plug 'mfussenegger/nvim-jdtls'
    
    " ----- Indent Guides -----
    Plug 'lukas-reineke/indent-blankline.nvim'

    Plug 'kyazdani42/nvim-tree.lua'

endif

call plug#end()


" =============== Server Configs ================
" $HOME/.local/share/vim-lsp-settings/servers
" $XDG_DATA_HOME/vim-lsp-settings/servers


