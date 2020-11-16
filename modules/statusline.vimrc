
" -----Status Bar -----
let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ 'active': {
      \   'left': [ [ 'mode', 'filename',  'lineinfo' ],
      \    [ 'readonly', 'modified' ] ],
      \    'right': [ ['gitbranch'],[ 'filetype' ] ]
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
      \     'gitbranch': 'FugitiveHead'
      \ 
      \  },
      \  }

let g:lightline#bufferline#show_number = 1 
let g:rainbow_active = 1

if has('nvim') || has('termguicolors')
      set termguicolors
  endif
