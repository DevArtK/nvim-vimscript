source $HOME/.config/nvim/modules/plugins.vimrc
source $HOME/.config/nvim/modules/config.vimrc
source $HOME/.config/nvim/modules/theme.vimrc
source $HOME/.config/nvim/modules/statusline.vimrc
source $HOME/.config/nvim/modules/globalVars.vimrc
source $HOME/.config/nvim/modules/keybindings.vimrc
source $HOME/.config/nvim/modules/tree-telescope-lsp-keybinds.vimrc
source $HOME/.config/nvim/modules/coc-settings.vimrc
source $HOME/.config/nvim/modules/startify-Custom.vimrc

:lua << EOF
require'lspconfig'.jdtls.setup{}
--require("lsp")

EOF

if has('nvim-0.5')
  augroup lsp
    au!
     "au FileType java lua require(jdtls').start_or_attach({cmd = {'launch-jdtls'}})
      au FileType java lua require('lsp/lsp-java')
     augroup end
endif



" Completion
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" -------------------- LSP ---------------------------------

" Get absolute path of the directory of the current file
"let s:init_vim_dir = expand('<sfile>:p:h')
"let s:nvim_version = api_info().version
"if s:nvim_version.minor == 5
       "execute("source " . s:init_vim_dir . "/nightly.vim")
"else
       "execute("source " . s:init_vim_dir . "/stable.vim")
"endif


