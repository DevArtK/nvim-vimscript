
source $HOME/.config/nvim/modules/plugins.vimrc
source $HOME/.config/nvim/modules/config.vimrc
source $HOME/.config/nvim/modules/keybindings.vimrc
source $HOME/.config/nvim/modules/theme.vimrc
source $HOME/.config/nvim/modules/statusline.vimrc
source $HOME/.config/nvim/modules/globalVars.vimrc
source $HOME/.config/nvim/modules/startify-Custom.vimrc


" Get absolute path of the directory of the current file
"let s:init_vim_dir = expand('<sfile>:p:h')
"let s:nvim_version = api_info().version
"if s:nvim_version.minor == 5
        "execute("source " . s:init_vim_dir . "/nightly.vim")
"else
        "execute("source " . s:init_vim_dir . "/stable.vim")
"endif
