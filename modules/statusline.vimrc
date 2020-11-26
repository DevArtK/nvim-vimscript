
" -----Status Bar -----
let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ 'active': {
      \   'left': [ [ 'mode', 'filename',  'lineinfo' ],
      \    [ 'readonly', 'modified' ] ],
      \    'right': [ ['gitbranch'],[ 'filetype'], ['cocstatus'] ]
      \   
      \  },
      \ 'tabline': {
      \     'left': [['buffers']],
      \     'right': [['close']]
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
