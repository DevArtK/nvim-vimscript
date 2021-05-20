
" -----Status Bar -----
let g:lightline = {
      \ 'colorscheme': 'gruvbox8',
      \ 'active': {
      \
      \   'left': [ [ 'mode', 'lineinfo' ],
      \    [ 'readonly', 'modified' ] ],
      \
      "\   'right': [ ['gitbranch'],[ 'filetype'], ['cocstatus'] ]
      \   'right': [ [  'filename', 'filetype'], ['cocstatus'] ]
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

