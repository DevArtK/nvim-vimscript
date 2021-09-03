
" -----Status Bar -----
"
"\ 'colorscheme': 'gruvbox8',
let g:lightline = {
      \ 'colorscheme': 'gruvbox_material',
      \ 'active': {
      \
      \   'left': [ [ 'mode', 'lineinfo' ],
      \    [ 'readonly', 'modified' ] ],
      \   'right': [ ['gitbranch'],[ 'filetype'] ]
      \   
      \  },
      \ 'tabline': {
      \     'left': [['buffers']],
      \     'right': [['absolutepath']]
      \  
      \  },
      \ 'component_expand':{
      \     'buffers': 'lightline#bufferline#buffers'
      \  
      \  },
      \ 'component_type': {
      \     'buffers': 'tabsel'
      \  
      \  },  
      \ 'component_function': {
      \     'gitbranch': 'FugitiveHead',
      \     'cocstatus': 'coc#status'
      \ 
      \  },
      \  }


if has('nvim') || has('termguicolors')
      set termguicolors
  endif

